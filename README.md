## Proyecto Ascensor
### Tarea 1 - ELO329

UTFSM - 2017-1

Autores:
* Felipe Arriagada
* Boris Vidal
* Guillermo Becerra

------

En los directorios se encuentran los archivos fuentes en lenguaja JAVA que permiten resolver el problema de control de un asensor, modelanto objetos del mundo real, como objetos de software (e.g. ascensor, bontoneras, sensores de piso, unidad de control y motor).

El problema fue resuelto usando el método *iterativo* e *incremental*. Por esto se entregan directorios con el código utilizado para dar solución al problema en __cuatro etapas__. 

En cada directorio encontrará además de los archivos *.java, un archivo _Makefile_ que permitirá compilar los anteriores escribiendo ``` make ``` desde línea de comandos, y luego ejecutar el programa principal, ``` make run ``` . Para eliminar los archivos *.class, ejecutar ``` make clean ```.

------

#### Descripción General del Problema

Se desea controlar el comportamiento de un asensor, atendiendo los llamados desde los distintos pisos, con intención de subir o bajar, y llevándo a los pasajeros al piso que éstos indiquen en la botonera interna. Para esto se cuenta con un sensores de piso que permiten el correcto desplazamiento y detección entre pisos, una unidad de contro, un motor e indicadores de pisos, como se muestra en la imagen a continuación. 

![Image](http://www.profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/Fig1.png)

El código presentado, consiste en la completación de un código provisto por el profesor, que fue intencionalmente reducido.

#### Operación

Para realizar llamados a nuestro asensor virtual, se generó un archivo *.txt que contiene la siguiente información: ``` <tiempo>  <TAB>  <número de botonera>  <TAB>   <U | D | número de piso>  <RET> ```

Para información más detallada dirigirse al siguiente link [Tarea 1](http://www.profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1_1s17.html)

------

#### Etapa 1 (Stage1)

Esta etapa sólo se implementa clases para representar la botonera de cada piso y la de cabina. El programa leerá los eventos del archivo de entrada y apagará el botón previamente encendido cuando uno nuevo sea presionado. 


![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage1/ClassDiagram.png)

------

#### Etapa 2 (Stage2)

En esta segunda etapa se implementará la cabina (que incluye su motor) y los sensores de piso. Cada sensor se ubica en una posición específica de la caja del ascensor y la cabina circula por su interior. Por esta razón los sensores de piso y la cabina están en la caja del ascensor. 

![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage2/classDiagram.png)

------

#### Etapa 3 (Stage3)

En esta etapa se incluye la Unidad de Control y a ella llegan llegan las señales de la botonera de cada piso. Aquellas de la botonera de la cabina no son consideradas en esta etapa. En esta etapa la Unidad de Control recibe llamados desde cada piso y mueve la cabina a los pisos que corresponda. Una vez que llega al piso, apaga la luz del llamado y se detiene por 2 segundos.

![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage3/Stage3ClassDiagram.png)


------

#### Estapa 4 (Stage4)

En esta etapa se conecta la botonera de la cabina a la Unidad de Control. Se modifica la lógica de la unidad de control para que el sistema funcione con todas las prestaciones requeridas.
