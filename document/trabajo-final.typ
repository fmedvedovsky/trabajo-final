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
- La interoperabilidad es la "habilidad de dos o más sistemas o de sus componentes para utilizarse de forma conjunta e intercambiable." @rae-interop. 
- En el contexto de lenguajes de programación, la interoperabilidad hace referencia a la capacidad de que un sistema de software posea componentes escritos en lenguajes de programación diferentes y que los mismos puedan comunicarse entre sí. 

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
  - En el trabajo se analizaron 4.001 proyectos en GitHub y 20,37 millones de commits.
  - Mecanismos de interoperabilidad de lenguajes:
    - * Invocación de funciones externas (Foreign function invocation - FFI).* Una de las principales formas de establecer una interfaz entre los lenguajes de programación más habituales es la FFI [46, 86], mediante la cual el lenguaje anfitrión proporciona una interfaz de funciones externas para adaptar su semántica y sus convenciones de llamada a las del lenguaje invitado. Por ejemplo, Java (el host) ofrece la Interfaz Nativa de Java (JNI) para permitir la interacción con código nativo escrito en C (el invitado). Dos características destacadas de la FFI son que (1) la interfaz del lenguaje sigue las definiciones estándar tal y como están documentadas (por ejemplo, JNI [66], extensión de Python [74]) y (2) las interacciones se implementan mediante invocaciones explícitas de funciones.
    - *Invocación implícita (IMI).* Definimos la IMI como un mecanismo mediante el cual diferentes componentes de lenguaje interactúan de forma implícita a través de la comunicación entre procesos (IPC), por ejemplo, el intercambio de mensajes basado en sockets. Esto suele observarse en sistemas distribuidos multilingües.
    - *Encarnación (Embodiment - EBD):* Los lenguajes implicados no interactúan mediante invocaciones explícitas o implícitas, sino a través de la encarnación de uno en el otro; la interacción real suele tener lugar dentro del sistema de ejecución subyacente (por ejemplo, el motor de un navegador web) que ejecuta el programa multilingüaje. Por lo general, estos lenguajes son interdependientes entre sí e incluso coexisten. Por ejemplo, la interacción en la selección de lenguajes {css, html, javascript} se realiza mediante EBD, tal y como se observa en las aplicaciones web.
    - *Interacción oculta (Hidden interaction - HIT).* En una selección con este mecanismo, no hay ningún indicio a nivel de código de conexión, ni siquiera implícita, entre los lenguajes. La interacción suele llevarse a cabo mediante el intercambio de datos externos. Por ejemplo, un componente de Python descarga datos de la web como entradas para un analizador escrito en C.
  - Categorías de vulnerabilidades
    - *Defensas deficientes (Porous Defenses).* Las vulnerabilidades de esta categoría se deben al uso incorrecto o a la falta de uso de las técnicas de defensa de seguridad necesarias (por ejemplo, ausencia de autenticación para funciones críticas, uso de credenciales codificadas de forma fija, falta de cifrado de datos confidenciales).
    - *Gestión arriesgada de los recursos (Risky resource management).* Estas vulnerabilidades se deben a una creación, uso, transferencia o destrucción inadecuadas de recursos importantes del sistema (por ejemplo, desbordamiento enteros). La mayoría de las selecciones de lenguajes de programación que presentan una relación superior a la media con estas vulnerabilidades incluyen C o C++: ambos utilizan memoria no gestionada (por lo que son propensos a errores de memoria) y son bien conocidos por su propensión a las vulnerabilidades de memoria.
    - *Interacción insegura (Insecure interaction).* Estas vulnerabilidades se deben a métodos inseguros de envío y recepción de datos entre componentes, módulos, programas, procesos, subprocesos o sistemas independientes (por ejemplo, falsificación de solicitudes entre sitios, ejecución de scripts entre sitios o inyección SQL).
  - La selección del lenguaje se asoció más claramente con la propensión a categorías específicas de vulnerabilidades que con las vulnerabilidades en general. Las opciones más elegidas presentaban mayor propensión a los riesgos relacionados con la gestión de recursos y a las interacciones inseguras que a los riesgos relacionados con una defensa deficiente.
  - Se utiliza predominantemente la interfaz implícita frente a mecanismos explícitos como la FFI (por ejemplo, JNI), lo cual se justifica por las ventajas prácticas de la primera.
  - Tanto los mecanismos de interfaz de lenguaje explícitos como los implícitos se asociaron estrechamente con la propensión general a la vulnerabilidad del código; FFI e IMI fueron los mecanismos más propensos a la vulnerabilidad.


== Introducción de C++ y Rust
- En @cpp-how-to-program:
  - C++ (originalmente C con Clases - "C with Classes", renombrado en los 1980s) es un lenguaje de programación que fue desarrollado por Bjarne Stroustrup en el año 1979 en Bell Laboratories como una extensión del lenguaje C. 
  - Inicialmente este lenguaje añadía nuevas características a C, principalmente la capacidad de realizar programación orientada a objetos inspirada por el lenguaje de programación Simula. 
  - 5 modelos de programación: programación procedural, programación orientada a objetos, programación de estilo funcional, programación genérica y metaprogramación de plantillas. 
  - C++ es el lenguaje por excelencia para el desarrollo de sistemas informáticos de alto rendimiento y claves para los negocios, incluyendo sistemas operativos, sistemas de tiempo real, sistemas embebidos, videojuegos, sistemas bancarios, sistemas de control de tráfico aéreo, sistemas de comunicación, entre otros sistemas. 
  - Incluso en sistemas programados principalmente en otros lenguajes, C++ es utilizado para las porciones de código que requieren un alto rendimiento.
- En @programming-rust:
  - Rust es un lenguaje de programación de sistemas.
  - Concepto de comportamiento indefinido (undefined behavior - UB), de acuerdo al estándar del lenguaje de programación C
    - Comportamiento que se produce al utilizar una construcción de programa no portátil o errónea, o datos erróneos, respecto a los cuales la presente Norma Internacional no establece ningún requisito.
  - C y C++ tienen cientos de reglas para evitar comportamientos indefinidos.
    - Generalmente son de sentido común: no acceder a memoria que no se debe acceder, no dejar que las operaciones aritméticas se desborden, no dividir por 0, etc.
    - Sin embargo, el compilador no fuerza estas reglas.
    - La responsabilidad de evitar comportamiento indefinido recae en el programador.
  - El lenguaje de programación Rust hace una promesa simple: si tu programa pasa las comprobaciones del compilador, el mismo está libre de comportamiento indefinido.
  - En Rust, los punteros colgantes, las liberaciones dobles y las desreferencias de punteros nulos se detectan en tiempo de compilación.
  - Las referencias a arreglos se protegen mediante una combinación de comprobaciones en tiempo de compilación y en tiempo de ejecución, por lo que no se producen desbordamientos de búfer.
  - Para ofrecer mayores garantías sobre el comportamiento de tu programa, Rust impone más restricciones al código que C y C++, y se necesita práctica y experiencia para acostumbrarse a ellas.
  - A pesar del punto anterior, Rust es un lenguaje flexible y expresivo.
  - La programación concurrente es notoriamente difícil de usar correctamente en C y C++. Los desarrolladores suelen recurrir a la concurrencia solo cuando el código de un solo hilo ha demostrado ser incapaz de alcanzar el rendimiento que necesitan. Sin embargo, el paralelismo es demasiado imporatnte en las computadoras modernas como para considerarlo como un último recurso.
  - Las mismas restricciones que garantizan la seguridad de la memoria en Rust también garantizan que los programas escritos en Rust estén libres de carreras de datos. 
  - En Rust, puedes compartir datos libremente entre subprocesos, siempre y cuando no cambien. Solo se puede acceder a los datos que sí cambian mediante primitivas de sincronización. 
  - En Rust, se dispone de todas las herramientas tradicionales de concurrencia: mutexes, variables de condición, canales, operaciones atómicas, etc. Rust simplemente comprueba que las estés utilizando correctamente.
  - Esto convierte a Rust en un lenguaje excelente para aprovechar al máximo las capacidades de los equipos multinúcleo modernos. El ecosistema de Rust ofrece bibliotecas que van más allá de las primitivas de concurrencia habituales y te ayudan a distribuir cargas complejas de manera uniforme entre grupos de procesadores, a utilizar mecanismos de sincronización sin bloqueos como «Read-Copy-Update», y mucho más.
  - Cargo, el gestor de paquetes y herramienta de compilación de Rust, facilita el uso de las bibliotecas publicadas por otros usuarios en el repositorio público de paquetes de Rust, el sitio web crates.io. Basta con añadir el nombre de la biblioteca y el número de versión requerido a un archivo, y Cargo se encarga de descargar la biblioteca, junto con cualquier otra biblioteca que esta utilice a su vez, y de enlazar todo el conjunto.
En @bugden2206rust:
- Rust comenzó en 2006 como un proyecto personal de Graydon Hoare, un empleado de Mozilla.
- Mozilla vio el potencial del nuevo lenguaje y comenzó a patrocinar el proyecto en 2010.
- El objetivo principal de Rust es la seguridad (de la memoria), pero más adelante también empezó a centrarse en el rendimiento, adoptando el enfoque de C++ de la abstracción sin coste.
- Seguridad de Rust
  - La seguridad de un lenguaje de programación se reduce a su capacidad para prevenir o detectar errores como las lecturas excesivas del búfer.
  - La mayoría de estos problemas tienen que ver con la gestión de la memoria, por lo que los lenguajes modernos han desarrollado sistemas de gestión de la memoria, siendo el más conocido el de la recolección de basura.
  - Rust utiliza un sistema basado en la propiedad (ownership based system) para determinar las asignaciones y desasignaciones de memoria en tiempo de compilación, lo que mejora el rendimiento en tiempo de ejecución.
  - En pocas palabras, la memoria se asigna cuando se declara una variable y se libera una vez que la variable ya no se encuentra dentro del ámbito de visibilidad, ya que dicho ámbito es el propietario de la memoria. Este aspecto del sistema de propiedad evita las vulnerabilidades de «uso tras liberación» y «doble liberación», al evitar que el programador tenga que gestionar manualmente la memoria.
  - Otro aspecto realmente sorprendente del sistema de propiedad es que solo puede haber un propietario de la memoria en cada momento. Esto plantea un problema a la hora de compartir valores entre funciones, estructuras y subprocesos. Este problema se resuelve mediante un sistema de préstamo con sus propias reglas para las referencias compartidas.
  - Las reglas del sistema de préstamo (borrowing system) son bastante sencillas: puede haber una referencia mutable a la memoria o varias referencias inmutables, lo que significa que, en todo momento, solo habrá, como máximo, un hilo modificando la memoria, sin que haya otros leyendo.
  - La combinación de estos sistemas y sus reglas evita por completo que se produzcan conflictos de acceso a los datos, lo que convierte a Rust en una opción excelente para sistemas de software con un alto nivel de concurrencia.
  - Rust cuenta con otras características de seguridad, como la comprobación automática de límites en los accesos a los búferes. Rust no permite la aritmética de punteros fuera del bloque «unsafe», que rara vez es necesario, por lo que el acceso a los búferes se realiza mediante índices con comprobación de límites, lo que provoca un «panic» cuando se produce un acceso fuera de límites (en lugar de continuar en un estado indefinido). Esto evita tanto las lecturas excesivas como los desbordamientos de los búferes.
- Rendimiento de Rust
  - Rust utiliza el concepto de «abstracción de coste cero» para simplificar el lenguaje sin limitar el rendimiento.
    - Un ejemplo sencillo de esta idea es la monomorfización, que permite crear funciones genéricas que se convierten en las funciones del tipo concreto necesario en tiempo de compilación, por lo que no se producen costes en tiempo de ejecución.
  - Otra ventaja importante de Rust es que no cuenta con un recolector de basura, lo que aporta numerosas ventajas en cuanto al rendimiento.
    - La recolección de basura añade una sobrecarga en tiempo de ejecución, ya que el recolector de basura debe realizar un seguimiento de la memoria de alguna forma (normalmente mediante el recuento de referencias) para determinar cuándo se puede liberar la memoria.
    - Esto aumenta tanto el consumo de memoria (algo muy importante para los dispositivos integrados con memoria limitada) como el consumo de CPU (algo importante para el software en el que el rendimiento es fundamental).
    - Otro problema importante relacionado con la recolección de basura es que resulta más difícil de controlar, lo que provoca pausas inesperadas en la ejecución cuando se está ejecutando y/o liberando recursos no utilizados.
- Otras características de Rust
  - La primera herramienta importante del ecosistema de Rust es Cargo, que es un sistema de compilación y un gestor de paquetes.
    -  Cargo facilita prácticamente todo lo que puedas necesitar en un proyecto de software, incluida la gestión de dependencias (descarga y compilación), la gestión de compilaciones (depuración, lanzamiento y perfiles personalizados), las pruebas (pruebas unitarias y de integración), la evaluación comparativa del rendimiento, la generación de documentación y la instalación de herramientas adicionales que se integran con él.
  - Una herramienta estupenda que se puede instalar con Cargo es Clippy, un linter que ofrece advertencias adicionales y puede aplicar restricciones adicionales en tiempo de compilación, lo que hace que el código sea aún más seguro y rápido.
  - Otra herramienta importante que se puede instalar con Cargo es rustfmt, un formateador de código para Rust que ofrece numerosas opciones de configuración. Es aún más imprescindible para cualquier proyecto gestionado con control de versiones, ya que garantiza la coherencia en el formateo del código. 

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
