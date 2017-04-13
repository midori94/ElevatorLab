SRC=*.java
JFLAGS = -g -d bin src/
JC = javac
JVM= java -cp bin/
#.SUFFIXES: .java .class
#.java.class:
#	$(JC) $(JFLAGS) $*.java

MAIN = stage4Test
all: 
	mkdir -p bin/
	$(JC) $(JFLAGS)$(SRC)


run:
	$(JVM) $(MAIN) "inputEvents.txt" > StageE_out.csv


clean:
	rm -rf bin/
