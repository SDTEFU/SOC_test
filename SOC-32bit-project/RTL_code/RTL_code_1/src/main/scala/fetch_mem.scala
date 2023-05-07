import spinal.core._

class fetch_mem(CPU_bits: Int) extends Module {
  val io = new Bundle {
    //from sys
    val sys = new Bundle {
      val clk = in Bool()
      val rst_n = in Bool()
    }
    //about ex
    val ex = new Bundle {
      val en = in Bool()
      val w_en = in Bool()
      val mem_addr = in UInt (CPU_bits bits)
      val mem_rw_data = inout(Analog(UInt(CPU_bits bits)))
      val done = in Bool()
    }
    //about SSE
    val SSE = new Bundle {
      //SSE control
      val USE = out Bool()
      val belong = in Bool()
      //SSE bus
      val done = in Bool()
      val rw_data = inout(Analog(UInt(CPU_bits bits)))
      val access = out Bool()
      val w_en = out Bool()
      val addr = out UInt (CPU_bits bits)
    }
  }
  val clkcfg = ClockDomainConfig(clockEdge = RISING, resetKind = SYNC, resetActiveLevel = LOW)
  val clkdmi = ClockDomain(clock = io.sys.clk, reset = io.sys.rst_n)
  val clkarea = new ClockingArea(clkdmi) {
    val access = Bool() init (False)
    val flag = Reg(Bool()) init (False)

    when(io.ex.en) {
      io.SSE.addr := io.ex.mem_addr
      io.SSE.w_en := io.ex.w_en
      io.SSE.rw_data <> io.ex.mem_rw_data
      access := True
    }


    when(access) {
      access := False
      io.SSE.addr :=0
      io.SSE.w_en :=False
    }
  }

  io.SSE.access := clkarea.access
  io.ex.done := io.SSE.done
}

object fetch_mem extends App {
  SpinalConfig(
    mode = Verilog,
    targetDirectory = "./RTL_verilog_code"
  ).generate(new fetch_mem(32))
}
