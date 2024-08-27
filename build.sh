rm -rf dist
rm mycompiler.jar
mkdir dist

javac src/org/hccp/compiler/*.java  src/org/hccp/jvmci/test/*.java src/module-info.java -d dist

jar -cvfe mycompiler.jar org.hccp.jvmci.test.Hello    -C dist . 



