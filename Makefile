JFLAGS = -g -classpath src/
JC = javac
JVM= java -cp src/# Added by Agustín González
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = \
	src/BotoneraCabina.java \
	src/CajaAscensor.java \
	src/Sensor.java \
	src/Cabina.java \
	src/ControlUnit.java \
	src/stage2Test.java

# main variable: Added by Agustín González
MAIN = stage2Test

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agustín González
run: 
	$(JVM) $(MAIN)

clean:
	$(RM) src/*.class
