#java    --upgrade-module-path=mycompiler.jar  --add-reads jdk.internal.vm.compiler=jdk.internal.vm.ci  --add-modules jdk.internal.vm.ci --add-modules jdk.internal.vm.compiler --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=ALL-UNNAMED


java -verbose --show-module-resolution --upgrade-module-path=mycompiler.jar   -XX:+UnlockDiagnosticVMOptions -XX:+LogCompilation  -XX:+LogVMOutput  -XX:-TieredCompilation    -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI  -XX:+UseJVMCICompiler -Djvmci.Compiler=org.hccp.compiler.MyCompiler -XX:+PrintCompilation -p mycompiler.jar -cp mycompiler.jar -jar mycompiler.jar 


#java    --upgrade-module-path=mycompiler.jar  --add-reads jdk.internal.vm.compiler=jdk.internal.vm.ci  --add-modules jdk.internal.vm.ci --add-modules jdk.internal.vm.compiler --add-exports jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.code=ALL-UNNAMED --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=ALL-UNNAMED  -XX:+UnlockDiagnosticVMOptions -XX:+LogCompilation  -XX:+LogVMOutput  -XX:-TieredCompilation    -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI  -XX:+UseJVMCICompiler -Djvmci.Compiler=org.hccp.compiler.MyCompilerFactory  -XX:+PrintCompilation -jar mycompiler.jar 

#    -XX:-UseJVMCINativeLibrary
#  --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=org.hccp.compiler


# --add-modules jdk.internal.vm.ci   --add-reads org.hccp.compiler=jdk.internal.vm.ci --add-exports jdk.internal.vm.ci/jdk.vm.ci.services=org.hccp.compiler
