import spinal.core._

class id_ex(CPU_bits: Int) extends Module {
  val io = new Bundle {
    //from sys
    val sys = new Bundle {
      val clk = in Bool()
      val rst_n = in Bool()
    }
    //from id
    val id = new Bundle {
      val inst = in UInt (32 bits)
      val inst_addr = in UInt (CPU_bits bits)
      val rs1_data = in UInt (CPU_bits bits)
      val rs2_data = in UInt (CPU_bits bits)
      val rd_addr = in UInt (5 bits)
      val rd_w_en = in Bool()
    }
    //to ex
    val ex = new Bundle {
      val inst = out UInt (32 bits)
      val inst_addr = out UInt (CPU_bits bits)
      val rs1_data = out UInt (CPU_bits bits)
      val rs2_data = out UInt (CPU_bits bits)
      val rd_addr = out UInt (5 bits)
      val rd_w_en = out Bool()
    }
  }

  val clkcfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.sys.clk, reset = io.sys.rst_n, config = clkcfg)
  val clkarea = new ClockingArea(clkdmi) {
    val inst = Reg(UInt(32 bits)) init (0)
    val inst_addr = Reg(UInt(CPU_bits bits)) init (0)
    val rs1_data = Reg(UInt(CPU_bits bits)) init (0)
    val rs2_data = Reg(UInt(CPU_bits bits)) init (0)
    val rd_addr = Reg(UInt(5 bits)) init (0)
    val rd_w_en = Reg(Bool()) init (False)
    //输入数据保存
    inst := io.id.inst
    inst_addr := io.id.inst_addr
    rs1_data := io.id.rs1_data
    rs2_data := io.id.rs2_data
    rd_addr := io.id.rd_addr
    rd_w_en := io.id.rd_w_en
    //给输出
    io.ex.inst := inst
    io.ex.inst_addr := inst_addr
    io.ex.rs1_data := rs1_data
    io.ex.rs2_data := rs2_data
    io.ex.rd_addr := rd_addr
    io.ex.rd_w_en := rd_w_en
  }
}


object id_ex extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new id_ex(32))
}
