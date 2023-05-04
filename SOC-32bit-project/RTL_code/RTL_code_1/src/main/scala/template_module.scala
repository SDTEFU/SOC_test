import spinal.core._

class template_module extends Module {
  val io =new Bundle{

  }

}

object template_module extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new template_module)
}
