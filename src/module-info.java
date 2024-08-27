module jdk.internal.vm.compiler {

    requires jdk.internal.vm.ci;
    opens org.hccp.compiler;
    exports org.hccp.compiler;

    provides jdk.vm.ci.services.JVMCIServiceLocator with org.hccp.compiler.MyServiceLocator;
  
}
