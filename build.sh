rm -rf dist
rm mycompiler.jar
mkdir dist

javac --add-modules jdk.internal.vm.ci  --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=org.hccp.compiler --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=org.hccp.compiler   src/org/hccp/compiler/*.java  src/org/hccp/jvmci/test/*.java -d dist

jar -cvfe mycompiler.jar org.hccp.jvmci.test.Hello ./META-INF/services/jdk.vm.ci.runtime.JVMCICompilerFactory  -C dist . 

