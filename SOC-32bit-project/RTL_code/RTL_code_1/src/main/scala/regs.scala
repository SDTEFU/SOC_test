import spinal.core._

class regs(CPU_bit: Int) extends Module {
  val reg_addr_len = 5
  val reg_quantity = scala.math.pow(2, 5).toLong
  val io = new Bundle {

    //from id
    val rs1_addr = in UInt (reg_addr_len bits)
    val rs2_addr = in UInt (reg_addr_len bits)

    val rs1_data = out Bits (CPU_bit bits)
    val rs2_data = out Bits (CPU_bit bits)
    //from ex
    val w_en = in Bool()
    val rd_addr = in UInt (reg_addr_len bits)
    val rd_data = in Bits (CPU_bit bits)
  }

  val reg_mem = Mem(Bits(CPU_bit bits), reg_quantity)

  //read rs1
  io.rs1_data := reg_mem(io.rs1_addr)
  io.rs2_data := 12 //reg_mem.readAsync(io.rs2_addr)
  reg_mem(io.rd_addr) := io.rd_data


}

object regs extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new regs(32))
}