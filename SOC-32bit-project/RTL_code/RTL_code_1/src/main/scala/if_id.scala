import spinal.core._

class template_module(CPU_bit: Int) extends Module {
  val io = new Bundle {
    //from sys
    val sys = new Bundle {
      val clk = in Bool()
      val rst_n = in Bool()
    }

    //from ctrl
    val ctrl = in UInt (2 bits)

    //from if_module
    val if_module = new Bundle {
      val done = in Bool()
      val PC_o = in UInt (CPU_bit bits)
      val inst = in UInt (32 bits)
    }

    //to id_module
    val id_module = new Bundle {
      val done = out Bool()
      val PC_o = out UInt (CPU_bit bits)
      val inst = out UInt (32 bits)
    }
  }
  //打一拍
  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.sys.clk, reset = io.sys.rst_n, config = clkdmicfg)
  val clkdmiarea = new ClockingArea(clkdmi) {

  }

}

object template_module extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new template_module(32))
}