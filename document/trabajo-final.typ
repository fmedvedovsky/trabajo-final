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

== Proyectos de software multi-lenguaje

- En @li2024multilingual:
  - Se encontró analizando 7113 proyectos de Github, que la mayoría de los proyectos multilenguaje estudiados utilizaron de 2 a 5 lenguajes, a pesar de que la cantidad de lenguajes únicos encontrada fue de 296.
  - Se encontró que en los proyectos se utilizó predominantemente la interfaz implícita (IMI) frente a mecanismos explícitos como la FFI (por ejemplo, JNI).
  - En el período de 10 años examinado, la diversidad de lenguajes y la prevalencia de software multi-lenguaje creció de forma constante, y la construcción multi-lenguaje se convirtió en la norma predominante en el desarrollo de software moderno, tal y como se observa en los proyectos estudiados.
  - En los últimos diez años, cada vez más proyectos han utilizado entre tres y cinco lenguajes; tanto la lista de los lenguajes más utilizados como la de las combinaciones lingüísticas más elegidas se han mantenido estables (sobre todo la primera), aunque la clasificación de las combinaciones más utilizadas ha variado considerablemente.
  - A lo largo de los diez años analizados, se han utilizado mecanismos de interfaz lingüística cada vez más diversos en la construcción multilingüe. Por otra parte, el IMI ha sido, de forma constante, el mecanismo de interfaz predominante.
  - Con el paso del tiempo, las selecciones de idiomas resultaron menos estables que los idiomas individuales en relación con los ámbitos funcionales de los proyectos multilingües estudiados, aunque algunas selecciones se mostraron más estables en determinados ámbitos que en otros.
  - El desarrollo de software multilingüe, independientemente del ámbito funcional al que se dirija, se ha caracterizado siempre por contar con determinados mecanismos de interfaz lingüística estrechamente relacionados, que se han vuelto cada vez más híbridos, mixtos y diversos, lo que pone de manifiesto la creciente complejidad del desarrollo de software multilingüe a lo largo del tiempo.

- En @li2022vulnerability:
  - Mecanismos de interoperabilidad de lenguajes:
    - * Invocación de funciones externas (FFI).* Una de las principales formas de establecer una interfaz entre los lenguajes de programación más habituales es la FFI [46, 86], mediante la cual el lenguaje anfitrión proporciona una interfaz de funciones externas para adaptar su semántica y sus convenciones de llamada a las del lenguaje invitado. Por ejemplo, Java (el host) ofrece la Interfaz Nativa de Java (JNI) para permitir la interacción con código nativo escrito en C (el invitado). Dos características destacadas de la FFI son que (1) la interfaz del lenguaje sigue las definiciones estándar tal y como están documentadas (por ejemplo, JNI [66], extensión de Python [74]) y (2) las interacciones se implementan mediante invocaciones explícitas de funciones.
    - *Invocación implícita (IMI).* Definimos la IMI como un mecanismo mediante el cual diferentes componentes de lenguaje interactúan de forma implícita a través de la comunicación entre procesos (IPC), por ejemplo, el intercambio de mensajes basado en sockets. Esto suele observarse en sistemas distribuidos multilingües.
    - *Encarnación (EBD):* Los lenguajes implicados no interactúan mediante invocaciones explícitas o implícitas, sino a través de la encarnación de uno en el otro; la interacción real suele tener lugar dentro del sistema de ejecución subyacente (por ejemplo, el motor de un navegador web) que ejecuta el programa multilingüaje. Por lo general, estos lenguajes son interdependientes entre sí e incluso coexisten. Por ejemplo, la interacción en la selección de lenguajes {css, html, javascript} se realiza mediante EBD, tal y como se observa en las aplicaciones web.
    - *Interacción oculta (HIT).* En una selección con este mecanismo, no hay ningún indicio a nivel de código de conexión, ni siquiera implícita, entre los lenguajes. La interacción suele llevarse a cabo mediante el intercambio de datos externos. Por ejemplo, un componente de Python descarga datos de la web como entradas para un analizador escrito en C.


== Introducción de C++ y Rust
Antes de nombrar trabajos relacionados y herramientas de interoperabilidad, se considera conveniente realizar una breve introducción de los lenguajes con los que se trabajará y los motivos por los que se busca que los mismos interoperen.

C++ (originalmente C con Clases - "C with Classes", renombrado en los 1980s) @cpp-how-to-program es un lenguaje de programación que fue desarrollado por Bjarne Stroustrup en el año 1979 en Bell Laboratories como una extensión del lenguaje C. Inicialmente este lenguaje añadía nuevas características a C, principalmente la capacidad de realizar programación orientada a objetos inspirada por el lenguaje de programación Simula. Con el tiempo, el lenguaje fue evolucionando permitiendo a los programadores utilizar 5 modelos de programación: programación procedural, programación orientada a objetos, programación de estilo funcional, programación genérica y metaprogramación de plantillas. C++ es el lenguaje por excelencia para el desarrollo de sistemas informáticos de alto rendimiento y claves para los negocios, incluyendo sistemas operativos, sistemas de tiempo real, sistemas embebidos, videojuegos, sistemas bancarios, sistemas de control de tráfico aéreo, sistemas de comunicación, entre otros sistemas. Incluso en sistemas programados principalmente en otros lenguajes, C++ es utilizado para las porciones de código que requieren un alto rendimiento.

Por otro lado, Rust, al igual que C++, es un lenguaje de programación de sistemas iniciado como un proyecto de Graydon Hoare en 2006 y cuyo desarrollo fue apoyado por Mozilla a partir de 2009 cuando el lenguaje alcanzó un punto de madurez suficiente para demostrar sus conceptos clave @rust-faq.

== Trabajos relacionados
A continuación se mencionan algunos de los trabajos relacionados:
- En @von2024integrating, el autor provee una guía de cómo integrar Rust en una aplicación de C++, cubriendo temas como las bases de la integración de Rust y C++, la introducción de algunas herramientas y librerías (bindgen, cbindgen, cxx y cc) y la presentación de CMake y CMakeRust.

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
