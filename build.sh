rm -rf dist
rm mycompiler.jar
mkdir dist

javac --add-modules jdk.internal.vm.ci --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=ALL-UNNAMED  --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=ALL-UNNAMED  --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED --add-exports=jdk.internal.vm.ci/jdk.vm.ci.code=jdk.internal.vm.compiler --add-exports=jdk.internal.vm.ci/jdk.vm.ci.hotspot=jdk.internal.vm.compiler src/org/hccp/compiler/*.java  src/org/hccp/jvmci/test/*.java src/module-info.java -d dist

jar -cvfe mycompiler.jar org.hccp.jvmci.test.Hello ./META-INF/services/jdk.vm.ci.runtime.JVMCICompilerFactory ./META-INF/services/jdk.vm.ci.services.JVMCIServiceLocator   -C dist . 


