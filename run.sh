java  --upgrade-module-path=mycompiler.jar  -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI  -XX:+UseJVMCICompiler -Djvmci.Compiler=hccp-jit -jar mycompiler.jar



