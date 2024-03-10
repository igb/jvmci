package org.hccp.jvmci.test;

public class Hello {

    public static void main(String[] args) {

	System.out.println("hi");

     while (true) {
      workload(14, 2);
    }
  }

  private static int workload(int a, int b) {
    return a + b;
  }

}
