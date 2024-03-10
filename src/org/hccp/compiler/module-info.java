module org.hccp.compiler {
    requires jdk.internal.vm.ci;
    provides jdk.vm.ci.services.JVMCIServiceLocator with org.hccp.compiler.MyServiceLocator;

}
