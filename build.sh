rm -rf dist
rm mycompiler.jar
mkdir dist
#javac	--release 9 --add-modules jdk.internal.vm.ci  --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=ALL-UNNAMED,ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=ALL-UNNAMED src/org/hccp/compiler/*.java  src/org/hccp/jvmci/test/*.java -d dist

javac --add-modules jdk.internal.vm.ci  --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=org.hccp.compiler --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=org.hccp.compiler  --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=org.hccp.compiler  src/org/hccp/compiler/*.java  src/org/hccp/jvmci/test/*.java -d dist

jar -cvfe mycompiler.jar org.hccp.jvmci.test.Hello ./META-INF/services/jdk.vm.ci.runtime.JVMCICompilerFactory ./META-INF/services/jdk.vm.ci.services.JVMCIServiceLocator  -C dist . 

