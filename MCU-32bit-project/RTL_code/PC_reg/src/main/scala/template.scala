import spinal.core._


class RV32I_Define {
  val INST_NOP = 0x00000013
}


//================================================PC_reg================================================================
class PC_reg(CPU_bits: Int) extends Module {

  val CPU_Max_num = scala.math.pow(2, CPU_bits).toLong - 1

  val io = new Bundle {
    val clk = in Bool()
    val rst_n = in Bool()
    val access = out Bool()
    val done = in Bool()
    val pc_o = out UInt (CPU_bits bits)
  }
  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n, config = clkdmicfg)
  val clkarea = new ClockingArea(clkdmi) {
    val pc_o = Reg(UInt(CPU_bits bits)) init (0)
    val access_sign = Reg(Bool()) init (False)

    when(pc_o === CPU_Max_num) {
      pc_o := 0
    } elsewhen (io.done === True) {
      pc_o := pc_o + 4
      access_sign := True
    } otherwise {
      pc_o := pc_o
    }

    when(access_sign) { //单时钟脉冲
      access_sign := False
    }
    io.access := access_sign
    io.pc_o := pc_o
  }
}


object template extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new PC_reg(32))


  //Sim=====================================================================

  import spinal.core.sim._
  //SimConfig.withXSim.withWave()


  println(s"${scala.math.pow(2, 32).toLong}")
}
