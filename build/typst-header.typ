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
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
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

// Codigo.
#show raw: set text(font: ("Consolas", "Cascadia Mono", "Courier New"), size: 8.5pt)
#show raw.where(block: true): it => block(width: 100%, fill: luma(245), inset: 6pt, radius: 2pt, it)

// Enlaces.
#show link: set text(fill: rgb("#0b5ea8"))
#show quote: set text(style: "italic")
