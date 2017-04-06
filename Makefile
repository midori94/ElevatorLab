JFLAGS = -g -classpath src/
JC = javac
JVM= java -cp src/ # Added by Agust�n Gonz�lez
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	src/Botonera.java \
	src/BotoneraCabina.java \
	src/Cabina.java \
	src/ControlUnit.java \
	src/motor.java \
	src/stage3Test.java

# main variable: Added by Agust�n Gonz�lez
MAIN = stage3Test

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agust�n Gonz�lez
run: 
	$(JVM) $(MAIN) "inputEvents.txt"

clean:
	$(RM) src/*.class
