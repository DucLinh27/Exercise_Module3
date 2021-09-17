rm -rf build/test/
cd src/main/
javac org/usefullibs/greeter/impl/HelloWorld.java \
  -d ../../build/test/ \
  && echo 'Compiled org.usefullibs.greeter.impl.HelloWorld class!'
cd ../test
javac org/usefullibs/greeter/impl/HelloWorldTest.java \
  -cp ../../build/test/:../../libs/junit-4.11.jar \
  -d ../../build/test/ \
  && echo 'Compiled org.usefullibs.greeter.impl.HelloWorldTest class!'
  cd ../../build/test
java -cp ../../libs/junit-4.11.jar:. \
  org.junit.runner.JUnitCore \
  org.usefullibs.greeter.impl.HelloWorldTest
  cd ../../build/test
java -cp ../../libs/junit-4.11.jar:../../libs/hamcrest-all-1.3.jar:. \
  org.junit.runner.JUnitCore \
  org.usefullibs.greeter.impl.HelloWorldTest