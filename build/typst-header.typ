// Estilo del informe (Typst). Se inyecta con include-in-header.
#set document(
  title: "Informe de Trabajo Final — OrganiK",
  author: ("Atencio Cristobal, Cielo Valentina", "Cáceres Pizarro, Albino Florencio", "Olivares Lao, Gustavo Alonso", "Quispe Almonacid, Andre Sebastian", "Torres Huaman, Alexis Calin"),
)

#set text(font: ("Calibri", "Segoe UI", "Arial", "Segoe UI Emoji"), lang: "es")
#set par(justify: true, leading: 0.62em, spacing: 0.95em)
#set page(
  footer: context {
    if counter(page).get().first() > 1 [
      #set text(size: 8pt, fill: luma(110))
      OrganiK · Informe de Trabajo Final — 1ASI0729 #h(1fr) #counter(page).display()
    ]
  },
)

// Titulos: cada capitulo en pagina nueva, jerarquia tipografica clara.
// Las secciones cortas del front-matter fluyen sin salto de pagina forzado.
#let flow-sections = ([Project Report Collaboration Insights],)
#show heading.where(level: 1): it => {
  if not flow-sections.contains(it.body) { pagebreak(weak: true) }
  set text(size: 20pt, weight: "bold", fill: rgb("#0f3d2e"))
  block(above: 0pt, below: 14pt, width: 100%, stroke: (bottom: 1.2pt + rgb("#0f3d2e")), inset: (bottom: 6pt), it.body)
}
#show heading.where(level: 2): it => {
  set text(size: 15pt, weight: "bold", fill: rgb("#0f3d2e"))
  block(above: 18pt, below: 8pt, sticky: true, it.body)
}
#show heading.where(level: 3): it => {
  set text(size: 12.5pt, weight: "bold", fill: rgb("#1a5c46"))
  block(above: 14pt, below: 6pt, sticky: true, it.body)
}
#show heading.where(level: 4): it => {
  set text(size: 11pt, weight: "bold", fill: rgb("#2b2b2b"))
  block(above: 12pt, below: 5pt, sticky: true, it.body)
}
#show heading.where(level: 5): it => {
  set text(size: 10.5pt, weight: "bold", style: "italic", fill: rgb("#2b2b2b"))
  block(above: 10pt, below: 4pt, sticky: true, it.body)
}

// Las tablas largas deben poder cortarse entre paginas.
#show figure: set block(breakable: true)

// Tablas: borde fino, texto algo menor, filas que no se cortan.
#set table(stroke: 0.5pt + luma(150), inset: 4pt)
#show table: set text(size: 8.5pt)
#show table: set par(justify: false)
#show table.cell.where(y: 0): set text(weight: "bold")
#show table.cell.where(y: 0): set table.cell(fill: rgb("#e6f2ec"))

// Imagenes: nunca exceden el ancho de la pagina.
#show image: it => layout(size => {
  let m = measure(it)
  if m.width > size.width {
    scale(size.width / m.width * 100%, reflow: true, it)
  } else {
    it
  }
})

// Imagenes en linea (box): las verticales (alto <= 3 veces el ancho) se limitan al 68% de la altura
// util de la pagina para que quepan junto al texto previo y no dejen hojas casi vacias. Las tiras
// extremadamente altas (wireframes/mock-ups de landing) se limitan al 72%.
#show box: it => if it.body.func() == image {
  block(width: 100%, breakable: false, layout(size => {
    let m = measure(it.body)
    let sw = if m.width > size.width { size.width / m.width } else { 1 }
    let h = m.height * sw
    if h > 0pt {
      let ratio = m.height / m.width
      let full = 700pt
      let cap = if ratio <= 3 { full * 0.68 } else { full * 0.72 }
      let target = calc.min(h, cap)
      let f = sw * (target / h)
      if f < 1 { scale(f * 100%, reflow: true, it.body) } else { it.body }
    } else { it.body }
  }))
} else { it }

// Codigo.
#show raw: set text(font: ("Consolas", "Cascadia Mono", "Courier New"), size: 8.5pt)
#show raw.where(block: true): it => block(width: 100%, fill: luma(245), inset: 6pt, radius: 2pt, it)

// Indice compacto.
#show outline.entry: set block(above: 0.45em)

// Enlaces.
#show link: set text(fill: rgb("#0b5ea8"))
#show quote: set text(style: "italic")
