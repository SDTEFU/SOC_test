import spinal.core._

class IFetch extends Module {
  val io = new Bundle {

  }
}

object IFetch extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new IFetch)
}
