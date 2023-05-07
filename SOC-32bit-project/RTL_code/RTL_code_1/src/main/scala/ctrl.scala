import spinal.core._


class ctrl(CPU_bit: Int) extends Module {
  val io = new Bundle {
    //from ex
    val ex = new Bundle {
      val jump_addr = in UInt (CPU_bit bits)
      val jump_en = in Bool()
      val hold_en = in Bool()
    }
    //to id_ex /id_id / PC_reg ctrl
    val outctrl = new Bundle {
      val ctrl = out UInt (2 bits)
      val jump_addr = out UInt (CPU_bit bits)
    }
  }

  when(io.ex.jump_en) {
    io.outctrl.ctrl := 1
    io.outctrl.jump_addr := io.ex.jump_addr
  } elsewhen (io.ex.hold_en) {
    io.outctrl.ctrl := 2
    io.outctrl.jump_addr := 0
  } otherwise {
    io.outctrl.ctrl := 0
    io.outctrl.jump_addr := 0
  }

}

object ctrl extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new ctrl(32))
}
