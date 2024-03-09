import jdk.vm.ci.runtime.JVMCICompiler;
import jdk.vm.ci.runtime.JVMCICompilerFactory;
import jdk.vm.ci.runtime.JVMCIRuntime;

public class MyCompilerFactory implements JVMCICompilerFactory {

    @Override
    public String getCompilerName() {
        return "MyCompiler";
    }

    @Override
    public JVMCICompiler createCompiler(JVMCIRuntime runtime) {
        return new MyCompiler();
    }

}
