-- Convierte el HTML crudo usado en los .md (tablas, divs centrados, <br>, <strong>, <img>, ...)
-- en nodos nativos de Pandoc para que se renderice correctamente en PDF (Typst).
-- Los .md siguen siendo validos para GitHub: este filtro solo actua durante el build.

local function is_typst()
  return FORMAT:match('typst') ~= nil
end

local div_stack = {}

local function raw(s)
  return pandoc.RawBlock('typst', s)
end

-- Reemplaza Divs con align="center" por bloques centrados de Typst.
local function expand_divs(blocks)
  local out = pandoc.List()
  for _, b in ipairs(blocks) do
    if b.t == 'Div' then
      local align = b.attributes['align']
      local style = b.attributes['style'] or ''
      if style:match('page%-break') then
        out:insert(raw('#pagebreak(weak: true)'))
      elseif align == 'center' or style:match('text%-align:%s*center') then
        out:insert(raw('#align(center)['))
        out:extend(expand_divs(b.content))
        out:insert(raw(']'))
      else
        out:extend(expand_divs(b.content))
      end
    else
      out:insert(b)
    end
  end
  return out
end

function RawBlock(el)
  if el.format ~= 'html' then return nil end
  local t = el.text
  if t:match('^%s*<div[^>]*page%-break[^>]*>%s*</div>%s*$') then
    return raw('#pagebreak(weak: true)')
  end
  if t:match('^%s*<div[^>]*>%s*$') then
    local centered = t:match('align="center"') ~= nil or t:match('text%-align:%s*center') ~= nil
    table.insert(div_stack, centered)
    if centered then return raw('#align(center)[') end
    return {}
  end
  if t:match('^%s*</div>%s*$') then
    local centered = table.remove(div_stack)
    if centered then return raw(']') end
    return {}
  end
  if t:match('^%s*<br%s*/?>%s*$') then
    return raw('#v(0.6em)')
  end
  if t:match('^%s*<!%-%-') then
    return {}
  end
  local ok, doc = pcall(pandoc.read, t, 'html')
  if not ok then return {} end
  return expand_divs(doc.blocks)
end

-- Inlines: <br>, <strong>, <em>, <code>, <a>, <img> sueltos dentro de parrafos y celdas.
local function attr_of(tag, name)
  return tag:match(name .. '%s*=%s*"([^"]*)"') or tag:match(name .. "%s*=%s*'([^']*)'")
end

function Inlines(inlines)
  local out = pandoc.List()
  local stack = {}
  local changed = false

  local function push(el)
    if #stack > 0 then
      stack[#stack].content:insert(el)
    else
      out:insert(el)
    end
  end

  local function close(kind)
    for i = #stack, 1, -1 do
      if stack[i].kind == kind then
        local frame = table.remove(stack, i)
        -- cerrar tambien frames abiertos dentro
        local el
        if kind == 'strong' then el = pandoc.Strong(frame.content)
        elseif kind == 'em' then el = pandoc.Emph(frame.content)
        elseif kind == 'code' then el = pandoc.Code(pandoc.utils.stringify(frame.content))
        elseif kind == 'a' then el = pandoc.Link(frame.content, frame.href or '')
        elseif kind == 'span' then el = pandoc.Span(frame.content)
        end
        push(el)
        return true
      end
    end
    return false
  end

  for _, el in ipairs(inlines) do
    if el.t == 'RawInline' and el.format == 'html' then
      local t = el.text
      local lower = t:lower()
      if lower:match('^<br%s*/?>$') then
        push(pandoc.LineBreak()); changed = true
      elseif lower:match('^<strong>$') or lower:match('^<b>$') then
        table.insert(stack, {kind = 'strong', content = pandoc.List()}); changed = true
      elseif lower:match('^</strong>$') or lower:match('^</b>$') then
        if not close('strong') then push(el) end; changed = true
      elseif lower:match('^<em>$') or lower:match('^<i>$') then
        table.insert(stack, {kind = 'em', content = pandoc.List()}); changed = true
      elseif lower:match('^</em>$') or lower:match('^</i>$') then
        if not close('em') then push(el) end; changed = true
      elseif lower:match('^<code>$') then
        table.insert(stack, {kind = 'code', content = pandoc.List()}); changed = true
      elseif lower:match('^</code>$') then
        if not close('code') then push(el) end; changed = true
      elseif lower:match('^<a%s') then
        table.insert(stack, {kind = 'a', content = pandoc.List(), href = attr_of(t, 'href')}); changed = true
      elseif lower:match('^</a>$') then
        if not close('a') then push(el) end; changed = true
      elseif lower:match('^<img%s') then
        local src = attr_of(t, 'src')
        local alt = attr_of(t, 'alt') or ''
        local w = attr_of(t, 'width')
        local attrs = {}
        if w then attrs.width = w:gsub('px$', '') .. 'pt' end
        if src then
          push(pandoc.Image({pandoc.Str(alt)}, src, '', pandoc.Attr('', {}, attrs)))
        end
        changed = true
      elseif lower:match('^<!%-%-') or lower:match('^<span') or lower:match('^</span') then
        changed = true
      else
        push(el)
      end
    else
      push(el)
    end
  end

  -- frames sin cerrar: volcar su contenido tal cual
  while #stack > 0 do
    local frame = table.remove(stack)
    for _, e in ipairs(frame.content) do
      if #stack > 0 then stack[#stack].content:insert(e) else out:insert(e) end
    end
  end

  if changed then return out end
  return nil
end

-- La caratula no lleva titulo de seccion visible.
function Header(el)
  if el.level == 1 and (el.identifier == 'carátula' or el.identifier == 'caratula') then
    return {}
  end
  return nil
end
