all:
	rm -f ./build/*.class
	java -cp ./build/:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore EdgeConnectorTest
	java -cp ./build/ RunEdgeConvert

clean: 
	rm -f ./build/*.class

test: compile 
	java -cp ./build/:lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore EdgeConnectorTest

run: compile
	java -cp ./build/ RunEdgeConvert

compile: 
	javac -d ./build -cp lib/junit-4.12.jar:lib/hamcrest-core-1.3.jar:./src/main src/main/java/*.java src/test/java/*.java 