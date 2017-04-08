JFLAGS = -g -classpath src/
JC = javac
JVM= java -cp src/ # Added by Agust�n Gonz�lez
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	src/Boton.java \
	src/Botonera.java \
	src/BotoneraCabina.java \
        src/CajaAscensor.java \
	src/Sensor.java \
        src/Cabina.java \
        src/ControlUnit.java \
	src/BotoneraPisoIntermedio.java \
	src/BotoneraPrimerPiso.java \
	src/DownRequest.java \
	src/UpRequest.java \
	src/ElevatorLab.java \
	src/stage2Test.java

# main variable: Added by Agust�n Gonz�lez
MAIN = stage2Test

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agust�n Gonz�lez
run: 
	$(JVM) $(MAIN) "inputEvents.txt"

clean:
	$(RM) src/*.class
