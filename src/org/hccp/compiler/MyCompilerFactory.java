package org.hccp.compiler;

import jdk.vm.ci.runtime.JVMCICompiler;
import jdk.vm.ci.runtime.JVMCICompilerFactory;
import jdk.vm.ci.runtime.JVMCIRuntime;

public class MyCompilerFactory implements JVMCICompilerFactory {

    @Override
    public String getCompilerName() {
	System.out.println("calling factory");
	System.out.flush();
        return "org.hccp.compiler.MyCompiler";
    }

    @Override
    public JVMCICompiler createCompiler(JVMCIRuntime runtime) {
	System.out.println("calling create");
	System.out.flush();

        return new MyCompiler();
    }

}
