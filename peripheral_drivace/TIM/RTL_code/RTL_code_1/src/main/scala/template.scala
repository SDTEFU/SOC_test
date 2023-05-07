import spinal.core._

class demon extends Component {
  val io = new Bundle {
    val clk = in Bool()
    val rst_n = in Bool()
    val PWM = out Bool()
  }

  val PSC: Int = 100000
  val ARR: Int = 100
  val CMP: Int = 50
  val REP: Int = 10

  val clkcfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.clk, reset = io.rst_n, config = clkcfg)
  val clkarea = new ClockingArea(clkdmi) {
    val PSC = Reg(UInt(64 bits)) init(0) //预分频器
    val CNT = Reg(UInt(64 bits)) init(0)//计数器

    val REP = Reg(UInt(64 bits)) init(0) //重复计数器
    val PWM = Reg(Bool())

    PSC := PSC + 1


    when(PSC === PSC) {
      PSC := 0
      CNT := CNT + 1
    }

    when(PWM === True) {
      when(CNT < CMP) {
        PWM := False
      } otherwise {
        PWM := True
      }
    }

    when(CNT === ARR) {
      CNT := 0

      REP := REP + 1

      when(REP >= REP) {
        PWM := False
        PWM := True
        //      when(PWM_off === False) {
        //        CNT_REP := CNT_REP + 1
        //      } otherwise {
        //        CNT_REP := CNT_REP - 1
        //      }
      }
    }

  }
  io.PWM := clkarea.PWM
}


object temp extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new demon)


  //simulation

  import spinal.core.sim._

  SimConfig.withWave.workspacePath("./RTL_sim").compile(new demon).doSim { dut =>
  }
}