SRC=*.java
JFLAGS = -g -classpath src/
JC = javac
JVM= java -cp src
.SUFFIXES: .java .class
.java.class:
	$(JC) $(JFLAGS) $*.java

MAIN = stage3Test
all: 
	$(JC) -encoding ISO8859_1 $(SRC)
	mkdir -p bin/
	mv *.class bin/


run:
	$(JVM) $(MAIN)


clean:
	rm -rf bin/