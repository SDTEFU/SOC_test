import spinal.core._

//================================================pc_reg================================================================
class pc_reg(CPU_bits: Int) extends Module {

  val CPU_Max_num = scala.math.pow(2, CPU_bits).toInt

  val io = new Bundle {
    val clk = in Bool()
    val rst_n = in Bool()
    val pc_o = out UInt (CPU_bits bits)
  }
  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n)
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
class ifetch extends Module {

}


object template extends App {
  SpinalVerilog(new pc_reg(32))
  println(s"${scala.math.pow(2, 32).toInt}")
}
