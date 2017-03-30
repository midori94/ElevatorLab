JFLAGS = -g
JC = javac
JVM= java  # Added by Agustín González
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = Boton.java Botonera.java BotoneraCabina.java BotoneraPisoIntermedio.java BotoneraPrimerPiso.java DownRequest.java UpRequest.java ElevatorLab.java

# main variable: Added by Agustín González
MAIN = ElevatorLab

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agustín González
run: 
	$(JVM) $(MAIN) "inputEvents.txt"

clean:
	$(RM) *.class
