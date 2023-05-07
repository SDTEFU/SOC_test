import spinal.core._

class temp extends Module {
  val io = new Bundle {

  }

}

object temp extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new temp)

  import spinal.core.sim._

  SimConfig.withWave.workspacePath("./RTL_sim").compile(new sys).doSim { dut =>

  }
}
