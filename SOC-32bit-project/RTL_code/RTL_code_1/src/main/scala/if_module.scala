import spinal.core._

class if_module(CPU_bit: Int) extends Module {

  val io = new Bundle {
    //about PC_reg
    val PC_reg = new Bundle {
      //from PC_reg
      val access = in Bool()
      val w_en = in Bool()
      val PC_o = in UInt (CPU_bit bits)
      //to PC_reg
      val done = out Bool()
    }
    //about if_id
    val if_id = new Bundle {
      //to if_id
      val done = out Bool()
      val PC_o = out UInt (CPU_bit bits)
      val inst = out UInt (32 bits)
    }
    //about SSE_bus
    val SSE_bus = new Bundle {
      //from SSE_bus
      val inst = in UInt (32 bits)
      val done = in Bool()
      //to SSE_bus
      val access = out Bool()
      val w_en = out Bool()
      val PC_o = out UInt (CPU_bit bits)
    }
  }
  //about SSE_bus
  io.SSE_bus.access := io.PC_reg.access
  io.SSE_bus.PC_o := io.PC_reg.PC_o
  io.SSE_bus.w_en := io.PC_reg.w_en
  //about PC_reg
  io.PC_reg.done := io.SSE_bus.done
  //about if_id
  io.if_id.done := io.SSE_bus.done
  io.if_id.inst := io.SSE_bus.inst
  io.if_id.PC_o := io.PC_reg.PC_o
}

object IF extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new if_module(32))
}
