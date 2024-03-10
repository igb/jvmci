package org.hccp.compiler;


import jdk.vm.ci.services.JVMCIServiceLocator;
import jdk.vm.ci.runtime.JVMCICompiler;

public class MyServiceLocator extends JVMCIServiceLocator {


    public <S> S getProvider(Class<S> service) {
	return null;
    }
    

    protected JVMCICompiler getCompiler() {
        return new MyCompiler();
    }
}
