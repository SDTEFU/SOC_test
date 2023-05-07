import spinal.core._

class regs(CPU_bit: Int) extends Module {


  val io = new Bundle {
    //from sys
    val clk = in Bool()
    val rst_n = in Bool()

    //from id
    val rs1_addr = in UInt (5 bits)
    val rs2_addr = in UInt (5 bits)

    val rs1_data = out UInt (CPU_bit bits)
    val rs2_data = out UInt (CPU_bit bits)
    //from ex
    val w_en = in Bool()
    val rd_addr = in UInt (5 bits)
    val rd_data = in UInt (CPU_bit bits)
  }

  val reg_mem = Mem(UInt(CPU_bit bits), 32)//寄存器堆


  //read rs1
  when(io.rs1_addr === 0) { //若访问0寄存器
    io.rs1_data := 0
  } elsewhen (io.w_en && io.rd_addr === io.rs1_addr) { //判断前一个指令是否在写现在要读的寄存器
    io.rs1_data := io.rd_data
  } otherwise {
    io.rs1_data := reg_mem(io.rs1_addr)
  }
  //read rs2
  when(io.rs2_addr === 0) { //若访问0寄存器
    io.rs2_data := 0
  } elsewhen (io.w_en && io.rd_addr === io.rs2_addr) { //判断前一个指令是否在写现在要读的寄存器
    io.rs2_data := io.rd_data
  } otherwise {
    io.rs2_data := reg_mem(io.rs2_addr)
  }


  //复位时给寄存器堆的值清0==============================================================================
  when(!io.rst_n) {
    for (rstcount <- 0 until 32) {
      reg_mem(U(rstcount, 5 bits)) := U(0, CPU_bit bits)
    }
  }
  //================================================================================================


  //写数据给目标寄存器
  when(io.w_en) { //给寄存器堆写数据使能
    when(io.rd_addr === 0) { //若写的寄存器是0寄存器
      reg_mem(io.rd_addr) := U(0, CPU_bit bits)
    } otherwise {
      reg_mem(io.rd_addr) := io.rd_data
    }
  }


}

object regs extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new regs(32))

  val 5 = 5
  println(s"${scala.math.pow(2, 5).toInt}")
}