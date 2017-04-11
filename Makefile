SRC=*.java
JFLAGS = -g -d bin src/
JC = javac
JVM= java -cp bin/
#.SUFFIXES: .java .class
#.java.class:
#	$(JC) $(JFLAGS) $*.java

MAIN = stage3Test
all: 
	mkdir -p bin/
	$(JC) $(JFLAGS)$(SRC)


run:
	$(JVM) $(MAIN) "inputEvents.txt"


clean:
	rm -rf bin/
