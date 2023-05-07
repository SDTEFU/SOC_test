import spinal.core._

class id(CPU_bits: Int) extends Module {
  val io = new Bundle {
    //from if_id
    val if_id = new Bundle {
      val PC = in UInt (CPU_bits bits)
      val inst = in UInt (32 bits)
    }
    //about regs
    val regs = new Bundle {
      //out
      val rs1_addr = out UInt (5 bits)
      val rs2_addr = out UInt (5 bits)
      //in
      val rs1_data = in UInt (CPU_bits bits)
      val rs2_data = in UInt (CPU_bits bits)
    }
    //to id_ex
    val id_ex = new Bundle {
      val inst = out UInt (32 bits)
      val inst_addr = out UInt (CPU_bits bits)
      val rs1_data = out UInt (CPU_bits bits)
      val rs2_data = out UInt (CPU_bits bits)
      val rd_addr = out UInt (5 bits)
      val rd_w_en = out Bool()
    }
  }

}

object id extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new id(32))
}
