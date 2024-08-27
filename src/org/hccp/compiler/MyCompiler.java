package org.hccp.compiler;

import jdk.vm.ci.code.CompilationRequest;
import jdk.vm.ci.code.CompilationRequestResult;

class MyCompiler implements jdk.vm.ci.runtime.JVMCICompiler {

    public CompilationRequestResult compileMethod(CompilationRequest request) {

	System.out.println("A request to compile " + request);
	return new MyCompilationRequestResult();
    }

}
