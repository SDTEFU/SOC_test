import spinal.core._


class RV32I_Define {
  val INST_NOP = 0x00000013
}


//================================================PC_reg================================================================
class PC_reg(CPU_bits: Int) extends Module {

  val CPU_Max_num = scala.math.pow(2, CPU_bits).toLong - 1

  val io = new Bundle {
    //from system
    val clk = in Bool()
    val rst_n = in Bool()

    //from ctrl
    val ctrl = in UInt  (2 bits)
    val jump_addr = in UInt  (CPU_bits bits)

    //from  SSE 控制器PC接口部分
    val USE = out Bool()
    val belong = in Bool()

    //from if
    val access = out Bool()
    val pc_o = out UInt (CPU_bits bits)
    val w_en = out Bool()
    val done = in Bool()
  }

  io.USE := True //使用SSE总线
  io.w_en:=False //读数据模式

  val clkdmicfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n, config = clkdmicfg)
  val clkarea = new ClockingArea(clkdmi) {

    val pc_o = Reg(UInt(CPU_bits bits)) init (0) //PC指令地址
    val access_sign = Reg(Bool()) init (False) //请求SSE总线执行

    when(pc_o === CPU_Max_num) { //计数到最大值时
      pc_o := 0
    } elsewhen (io.ctrl === 1) { //跳转指令要跳转时
      pc_o := io.jump_addr
    } elsewhen (io.ctrl === 2) { //访存指令执行时
      pc_o := pc_o
    } elsewhen (io.done && io.belong) { //总线反馈信号到来且为主设备
      pc_o := pc_o + 4
      access_sign := True
    } otherwise {
      pc_o := pc_o

    }

    when(access_sign) { //单时钟脉冲
      access_sign := False
      io.pc_o:= 0
    }otherwise{
      io.pc_o:=pc_o
    }


    io.access := access_sign
    //io.pc_o := pc_o
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
