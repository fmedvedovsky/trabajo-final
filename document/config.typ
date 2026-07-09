#let config(doc) = {
  // Reglas globales, se aplican a todo el texto/documento.

  set document(
    title: "Análisis comparativo de mecanismos de interoperabilidad en la integración de componentes de software desarrollados en C++ y Rust",
  )

  set page(
    paper: "us-letter",
    margin: (x: 2.5cm, y: 2.5cm),
    footer: context {
      let i = counter(page).get().first()
      if i > 1 {
        align(right, numbering("1", i))
      }
    },
  )

  set text(
    font: "Times New Roman",
    size: 12pt,
  )

  set par(
    leading: 1em,
  )

  set heading(
    numbering: "1.1.",
  )

  // Reglas que tienen como objetivo elementos específicos del documento

  show title: titulo => {
    align(center, titulo)
  }

  doc
}
