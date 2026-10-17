#let team = ("Moldovan Mihai", "Grec Marc-Alexander")

#let page-setup(title: "", part: "", body) = {
  set document(title: title, author: team)
  set page(
    paper: "a4",
    margin: (x: 1.8cm, top: 2.0cm, bottom: 1.6cm),
    header: context [
      #set text(size: 8pt, fill: luma(90))
      Computational Models for Embedded Systems — Assignment 1 (UBB-Goes-Green)
      #h(1fr) #part
      #v(-6pt)
      #line(length: 100%, stroke: 0.4pt + luma(170))
    ],
  )
  set text(font: "Libertinus Serif", size: 10pt, lang: "en")
  set par(justify: true, leading: 0.55em, spacing: 0.75em)
  set heading(numbering: none)
  show heading.where(level: 1): it => block(below: 0.5em)[
    #set text(size: 14pt, weight: "bold")
    #it.body
  ]
  show heading.where(level: 2): it => block(above: 0.85em, below: 0.4em)[
    #set text(size: 10.5pt, weight: "bold", fill: rgb("#1f5130"))
    #it.body
  ]
  set list(indent: 0.6em, body-indent: 0.4em, spacing: 0.45em)
  set enum(indent: 0.6em, body-indent: 0.4em, spacing: 0.45em)
  set table(stroke: 0.4pt + luma(160), inset: (x: 5pt, y: 3.5pt))
  show table.cell.where(y: 0): set text(weight: "bold")
  show table: set par(justify: false)
  show table: set text(hyphenate: false)

  [= #title]
  text(size: 8.5pt, fill: luma(70))[Team: #team.join(", ")]
  v(0.3em)
  body
}

#let sources(..items) = {
  v(1fr)
  line(length: 100%, stroke: 0.4pt + luma(170))
  set text(size: 7.5pt, fill: luma(60))
  set par(justify: false, spacing: 0.35em)
  [*Sources.* ]
  items.pos().enumerate().map(((i, s)) => [[#(i + 1)] #s]).join(h(0.6em))
}
