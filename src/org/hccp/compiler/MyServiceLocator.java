package org.hccp.compiler;


import jdk.vm.ci.runtime.JVMCICompilerFactory;
import jdk.vm.ci.services.JVMCIServiceLocator;
import jdk.vm.ci.runtime.JVMCICompiler;


public class MyServiceLocator extends JVMCIServiceLocator {


    @Override
    protected <S> S getProvider(Class<S> service) {

        if (service == JVMCICompilerFactory.class) {
            return service.cast(new MyCompilerFactory());
        }
        return null;
    }
}
