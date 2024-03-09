import jdk.vm.ci.code.CompilationRequest;
import jdk.vm.ci.code.CompilationRequestResult;

class MyCompiler implements jdk.vm.ci.runtime.JVMCICompiler {

    CompilationRequestResult compileMethod(CompilationRequest request) {
	System.out.println("COMPILE!!!");
	return new CompilationRequestResult();
    }

}
