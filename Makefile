JFLAGS = -g -classpath src/
JC = javac
JVM= java -cp src/ # Added by Agustín González
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

# main variable: Added by Agustín González
MAIN = stage3Test

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agustín González
run: 
	$(JVM) $(MAIN) "inputEvents.txt"

clean:
	$(RM) src/*.class
