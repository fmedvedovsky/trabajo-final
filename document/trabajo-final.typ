#import "config.typ": config
#show: config

#title()

#pagebreak()

#outline(
  title: "Contenidos",
)

#pagebreak()

= Fundamentación y estado del arte

== Interoperabilidad
El desarrollo de software utilizando múltiples lenguajes es una práctica ampliamente reconocida en la actualidad  que permite a los desarrolladores integrar lenguajes de programación, descriptivos, de modelado, entre otros dentro de un mismo proyecto, aprovechando las fortalezas de cada uno de ellos @yang2024multi. Esta práctica es posible gracias a la capacidad de los sistemas de interoperar.

La interoperabilidad es la "habilidad de dos o más sistemas o de sus componentes para utilizarse de forma conjunta e intercambiable." @rae-interop. En el contexto de lenguajes de programación, la interoperabilidad hace referencia a la capacidad de que un sistema de software posea componentes escritos en lenguajes de programación diferentes y que los mismos puedan comunicarse entre sí. Lo anterior puede lograrse a través de dos tipos de mecanismos de interfaz @yang2024multi: la _interfaz implícita_, dónde dos componentes pueden interactuar entre sí a través de métodos de comunicación interproceso (Ej: memoria compartida, pasaje de mensajes por red, etc); y la _interfaz explícita_ dónde los dos lenguajes interactúan usando invocación de funciones a través de lo que se conoce como una interfaz de funciones foráneas (FFI - Foreign Function Interface).

Este trabajo se enfoca en el caso concreto de herramientas que faciliten la comunicación explícita entre código escrito en C++ y Rust.

== Introducción de C++ y Rust

== Trabajos previos

== Herramientas de interoperabilidad entre C++ y Rust
Existen múltiples herramientas pensadas para facilitar la interoperabilidad entre C++ y Rust. A continuación se presentan algunas de ellas @bindgen @cbindgen @cxx @zngur @crubit:
- *bindgen*:  es una librería que genera automáticamente enlaces FFI de Rust para librerías de C y C++.
- *cbindgen*: es una librería de Mozilla que crea encabezados (headers) de C/C++11 para librerías de Rust que exponen una API pública de C.
- *cxx*: es una biblioteca que ofrece un mecanismo seguro para llamar a código C++ desde Rust y a código Rust desde C++. Establece un ámbito de coincidencia en el que Rust y C++ son semánticamente muy similares y guía al programador para que exprese los límites entre ambos lenguajes de forma eficaz dentro de ese ámbito. CXX se encarga de los aspectos de bajo nivel para que se obtenga un enlace seguro, evitando así los riesgos que conlleva utilizar una interfaz de funciones externas con firmas inseguras al estilo C.
- *zngur*: es una herramienta de interoperabilidad entre C++ y Rust. Su objetivo es exponer tipos, métodos y funciones arbitrarios de Rust conservando, en la medida de lo posible, su semántica y su ergonomía. Con Zngur, puedes utilizar crates de Rust arbitrarios en tu código C++ con la misma facilidad con la que los usarías en código Rust normal, y puedes escribir API idiomáticas de Rust para tu biblioteca C++ directamente en C++.
- *crubit:* es un generador de enlaces bidireccionales para C++ y Rust, cuyo objetivo es integrar los ecosistemas de C++ y Rust. El mismo es desarrollado por Google y necesita de una integración profunda con el sistema de compilación.





= Descripción de las herramientas concretas elegidas para las pruebas
= Análisis comparativo a partir de un caso de uso
= Análisis de resultados
= Conclusiones y líneas de trabajo futuro

#pagebreak()

#bibliography(
  ("bibliografia.yaml", "bibliografia.bib"),
  title: "Bibliografía",
  style: "ieee",
)
