SRC=*.java
JFLAGS = -g -d bin src/
JC = javac
JVM= java -cp bin/
#.SUFFIXES: .java .class
#.java.class:
#	$(JC) $(JFLAGS) $*.java

MAIN = elevator
all: 
	mkdir -p bin/
	$(JC) $(JFLAGS)$(SRC)


run:
	$(JVM) $(MAIN) "inputEvents.txt" > MasterMerge_out.csv


clean:
	rm -rf bin/
