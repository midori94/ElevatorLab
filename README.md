## Proyecto Ascensor
### Tarea 1 - ELO329

UTFSM - 2017-1

Autores:
* Felipe Arriagada
* Boris Vidal
* Guillermo Becerra

------

En los directorios se encuentran los archivos fuentes en lenguaja JAVA que permiten resolver el problema de control de un asensor, modelanto objetos del mundo real, como objetos de software (e.g. ascensor, bontoneras, sensores de piso, unidad de control y motor).

------

#### Descripción General del Problema

Se desea controlar el comportamiento de un asensor, atendiendo los llamados desde los distintos pisos, con intención de subir o bajar, y llevándo a los pasajeros al piso que éstos indiquen en la botonera interna. Para esto se cuenta con un sensores de piso que permiten el correcto desplazamiento y detección entre pisos, una unidad de contro, un motor e indicadores de pisos, como se muestra en la imagen a continuación. 

![Image](http://www.profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/Fig1.png)

#### Entrega

El código presentado, consiste en la completación de un código provisto por el profesor, que fue intencionalmente reducido.

El problema fue resuelto usando el método *iterativo* e *incremental*. Por esto se entregan directorios con el código utilizado para dar solución al problema en __cuatro etapas__. 

##### Ejecución

Para interactuar con el asensor virtual -requerirlo- se generó un archivo _inputEvents.txt_ en cada estapa, que contiene la siguiente información: ``` 
<tiempo>  <TAB>  <número de botonera>  <TAB>   <U | D | número de piso>  <RET> ```
que indica cuándo, desde dónde y qué se requiere. De este modo se puede probar el desarrollo realizado.

En cada directorio encontrará además de los archivos *.java, un archivo _Makefile_ que permitirá compilar los anteriores escribiendo ``` make ``` desde línea de comandos desde la carpeta contenedora, y luego ejecutar el programa principal, ``` make run ``` . Para eliminar los archivos *.class, ejecutar ``` make clean ```.  No cambiar el nombre del archivo de entrada (*.txt), ya que ``` make run ``` considera ejecutar el programa principal, pasando dicho archivo como parámetro. Además, java permite redigir la salida por pantalla a ficheros de salida. __Los archivos resultantes de la compilación quedan automáticamente en la carpeta bin/__.En este caso, desde el directorio raíz, se debe usar:
```Javascript
java -cp bin/ elevator "inputEvents.txt" > out.csv
```
De este modo a posteriori se puede usar los datos de salida organizados en formato CSV (*comma separated values*). 

##### Salida del programa:
```
<piso de la cabina> <estado sensores de piso> <TAB>  <estado luces de botonera de cabina> <TAB> <estado de luces de botones de subida de piso> <TAB> <estado de luces de botones de bajada de piso> <TAB> <estado de luz de la cabina> <RET>
```

Para información más detallada dirigirse al siguiente link [Tarea 1](http://www.profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1_1s17.html)

------

#### Etapa 1 (Stage1)

Esta etapa sólo se implementa clases para representar la botonera de cada piso y la de cabina. El programa leerá los eventos del archivo de entrada y apagará el botón previamente encendido cuando uno nuevo sea presionado. 

EL principal inconveniente al programar la presente etapa, no pasó de ser el entender el programa de ayuda recibido. Una vez que la intención de los métodos incluidos en el programa de ayuda fue comprendida, fue posible terminar con un programa coherente y funcional. 


![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage1/ClassDiagram.png)

------

#### Etapa 2 (Stage2)

En esta segunda etapa se implementará la cabina (que incluye su motor) y los sensores de piso. Cada sensor se ubica en una posición específica de la caja del ascensor y la cabina circula por su interior. Por esta razón los sensores de piso y la cabina están en la caja del ascensor. 

Al igual que en la primera etapa, la dificultad no pasó de ser el comprender la finalidad o intención del programador en los métodos inlcuidos en el programa de ayuda.

![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage2/classDiagram.png)

**Resultado de la etapa - Gráfico Nivel vs Evento **
![Image](https://github.com/radagast94/ElevatorLab/blob/Stage2/Stage2.jpg)

------

#### Etapa 3 (Stage3)

En esta etapa se incluye la Unidad de Control y a ella llegan llegan las señales de la botonera de cada piso. Aquellas de la botonera de la cabina no son consideradas en esta etapa. En esta etapa la Unidad de Control recibe llamados desde cada piso y mueve la cabina a los pisos que corresponda. Una vez que llega al piso, apaga la luz del llamado y se detiene por 2 segundos.

La presente etapa fue la más problemática, ya que aparte de comprender el programa, fue necesario dejar funcionando la máquina de estados de control. Fue necesario la implementación de tres máquians distintas, entre encontrar errores y implementar correcciones, para lograr el funcionamiento esperado.

![Image](http://profesores.elo.utfsm.cl/~agv/elo329/1s17/Assignments/T1/source/stage3/Stage3ClassDiagram.png)

**Resultado de la etapa - Gráfico Nivel vs Evento **
![Image](https://github.com/radagast94/ElevatorLab/blob/Stage3/Stage3.jpg)
------

#### Estapa 4 (Stage4)

En esta etapa se conecta la botonera de la cabina a la Unidad de Control. Se modifica la lógica de la unidad de control para que el sistema funcione con todas las prestaciones requeridas.

La dificultad solo fue de inteegrar la botonera de la cabina con el programa de la etapa 3.

##### Resultado de la etapa - Gráfico Nivel vs Evento
![Image](https://github.com/radagast94/ElevatorLab/blob/master/graph.jpg)

#### Se abordó el Extra Crédito

Se implementó la luz de la cabina al llegar a un piso se enciende y se apaga luego de 5 segundos sin recibir solicitudes.
