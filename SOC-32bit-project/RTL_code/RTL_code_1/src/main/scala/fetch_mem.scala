import spinal.core._

class fetch_mem(CPU_bits: Int) extends Module {
  val io = new Bundle {
    //about ex
    val ex = new Bundle {
      val en = in Bool()
      val w_en = in Bool()
      val mem_addr = in UInt (CPU_bits bits)
    }
    //about SSE
    val SSE = new Bundle {
      //SSE control
      val USE = out Bool()
      val belong = in Bool()

      //SSE bus
      val done = in Bool()

    }

  }

}

object fetch_mem extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new fetch_mem(32))
}
