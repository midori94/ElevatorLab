JFLAGS = -g
JC = javac
JVM= java  # Added by Agust�n Gonz�lez
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

CLASSES = Punto.java Linea.java LineaTest.java

# main variable: Added by Agust�n Gonz�lez
MAIN = LineaTest

default: classes

classes: $(CLASSES:.java=.class)

# run tarjet added by Agust�n Gonz�lez
run: 
	$(JVM) $(MAIN)

clean:
	$(RM) *.class