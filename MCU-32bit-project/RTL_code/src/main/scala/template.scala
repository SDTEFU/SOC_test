import spinal.core._


class rv32i_define {
  val INST_NOP = 0x00000013
}


//================================================pc_reg================================================================
class pc_reg(CPU_bits: Int) extends Module {

  val CPU_Max_num = scala.math.pow(2, CPU_bits).toLong - 1

  val io = new Bundle {
    val clk = in Bool()
    val rst_n = in Bool()
    val pc_o = out UInt (CPU_bits bits)
  }
  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n, config = clkdmicfg)
  val clkarea = new ClockingArea(clkdmi) {
    val pc_o = Reg(UInt(CPU_bits bits)) init (0)

    when(pc_o === CPU_Max_num) {
      pc_o := 0
    } otherwise {
      pc_o := pc_o + 4
    }
    io.pc_o := pc_o
  }
}

//====================================ifetch============================================
//class ifetch(CPU_bits: Int) extends Module {
//  val CPU_Max_num = scala.math.pow(2, CPU_bits).toLong - 1
//  val io = new Bundle {
//    val clk = in Bool()
//    val rst_n = in Bool()
//    val pc_o = out UInt (CPU_bits bits)
//  }
//
//}


object template extends App {
  SpinalVerilog(new pc_reg(32))
  println(s"${scala.math.pow(2, 32).toLong}")
}
