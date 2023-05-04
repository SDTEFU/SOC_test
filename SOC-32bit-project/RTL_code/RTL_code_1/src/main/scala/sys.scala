import spinal.core._

class sys extends Module {
  val io = new Bundle {
    //from outside
    val ckl = in Bool()
    val rst_n = in Bool()
    //to CPU
    val sys_clk = out Bool()
    val sys_rst_n = out Bool()
  }
  io.sys_clk := io.ckl
  val clkcfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.ckl, reset = io.rst_n, config = clkcfg)
  val clkarea = new ClockingArea(clkdmi) {
    val rst_one = Reg(Bool()) init (False)
      rst_one := True
  }
  io.sys_rst_n := clkarea.rst_one

}

object sys extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new sys)

  import spinal.core.sim._

  SimConfig.withWave.workspacePath("./RTL_sim").compile(new sys).doSim { dut =>
    fork {

      while (true) {
        dut.io.ckl #= false
        sleep(5)
        dut.io.ckl #= true
        sleep(5)
      }
    }
    dut.io.rst_n #= true
    //        sleep(20)
    //        dut.io.rst_n#=false
    //        sleep(50)
    //        dut.io.rst_n#=true
    sleep(100)
  }

}