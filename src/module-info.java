module jdk.internal.vm.compiler {
    requires java.instrument;
    requires java.management;
    requires jdk.internal.vm.ci;
    requires jdk.management;
    requires jdk.unsupported;
    opens org.hccp.compiler;
    exports org.hccp.compiler;

    provides jdk.vm.ci.services.JVMCIServiceLocator with org.hccp.compiler.MyServiceLocator;
  
}
