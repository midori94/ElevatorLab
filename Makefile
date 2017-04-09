SRC=*.java
JFLAGS = -g -d bin src/
JC = javac
JVM= java -cp src
#.SUFFIXES: .java .class
#.java.class:
#	$(JC) $(JFLAGS) $*.java

MAIN = stage3Test
all: 
	mkdir bin/
	$(JC) $(JFLAGS)$(SRC)


run:
	$(JVM) $(MAIN)


clean:
	rm -rf bin/
