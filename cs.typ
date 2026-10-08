#let tpl(body) = {
  set page(height :auto)
  show heading.where(level: 1): it => {
    text(it, font: "Harano Aji Gothic", weight: "regular", size: 15pt)
    par(text(size: 0pt, ""))
  }
  show heading.where(level: 2): it => {
    text(it, font: "Harano Aji Gothic", weight: "regular", size: 13pt)
    par(text(size: 0pt, ""))
  }
  show heading.where(level: 3): it => {
    text(it, font: "Harano Aji Gothic", weight: "regular", size: 12pt)
    par(text(size: 0pt, ""))
  }
  show heading.where(level: 4): it => {
    text(it, font: "Harano Aji Gothic", weight: "regular", size: 11pt)
    par(text(size: 0pt, ""))
  }
  set enum(numbering: "(1)", indent: 1em)

  set par(first-line-indent: 1em)
  set text(
    font: "Harano Aji Mincho",
    size: 11pt,
    weight: "regular",
    lang: "ja",
  )

  set math.equation(numbering: "(1)")

  show figure.where(kind: table): set figure.caption(position: top)
  let frame(stroke) = (x, y) => (
    top: if y < 2 { 0.5pt } else { 0pt },
    bottom: 0.5pt,
  )
  set table(stroke: frame(rgb("000000")), align: right)
  show "、": ","
  show "。": "."

  set raw(tab-size: 4)

  show raw.where(block: false): it => h(0.2em) + box(
    fill: luma(245),
    stroke: 0.5pt + luma(210),
    inset: (x: 3pt),
    outset: (y: 3pt),
    radius: 4pt,
    text(size: 0.9em, fill: rgb("00137d"),it),
  ) + h(0.2em)

  show raw.where(block: true): it => align(center, block(
    width: 90%,
    stroke: 0.5pt + gray,
    inset: 10pt,
    radius: 3pt,
    align(left, it),
  ))

  body
}

#let date = {
  set align(center)
  set text(size: 14pt, weight: "regular")
  datetime.today().display("レポート最終更新日：[year]年[month]月[day]日")
}

#let title(content) = {
  set align(center)
  set text(size: 18pt)
  [#content]
}

#let name(name) = {
  set align(center)
  set text(size: 15pt, weight: "regular")
  [#name]
}


