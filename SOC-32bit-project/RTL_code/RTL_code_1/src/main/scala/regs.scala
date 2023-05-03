import spinal.core._

class regs(CPU_bit: Int) extends Module {
  val reg_addr_len = 5 //寄存器地址长度
  val reg_count = scala.math.pow(2, 5).toInt //寄存器数量


  val io = new Bundle {
    //from sys
    val clk = in Bool()
    val rst_n = in Bool()

    //from id
    val rs1_addr = in UInt (reg_addr_len bits)
    val rs2_addr = in UInt (reg_addr_len bits)

    val rs1_data = out UInt (CPU_bit bits)
    val rs2_data = out UInt (CPU_bit bits)
    //from ex
    val w_en = in Bool()
    val rd_addr = in UInt (reg_addr_len bits)
    val rd_data = in UInt (CPU_bit bits)
  }

  val reg_mem = Mem(UInt(CPU_bit bits), reg_count)


  //read rs1
  io.rs1_data := reg_mem(io.rs1_addr)
  when(io.w_en || io.rd_addr === io.rs1_addr) { //判断前一个指令是否在写寄存器
    io.rs1_data := io.rd_data
  }
  //read rs2
  io.rs2_data := reg_mem(io.rs2_addr)
  when(io.w_en || io.rd_addr === io.rs2_addr) { //判断前一个指令是否在写寄存器
    io.rs2_data := io.rd_data
  }

  //写数据给目标寄存器
  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n, config = clkdmicfg)
  val clkdmiarea = new ClockingArea(clkdmi) {

    when(!io.rst_n) { //复位时给寄存器堆的值清0
      for (rstcount <- 0 until reg_count) {
        reg_mem(U(rstcount, reg_addr_len bits)) := U(0, 32 bits)
      }
    }
    when(io.w_en) { //给寄存器堆写数据
      reg_mem(io.rd_addr) := io.rd_data
    }

  }
}

object regs extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new regs(32))
}