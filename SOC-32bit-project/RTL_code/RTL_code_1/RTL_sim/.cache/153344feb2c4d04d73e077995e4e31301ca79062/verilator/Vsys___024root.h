// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vsys.h for the primary calling header

#ifndef VERILATED_VSYS___024ROOT_H_
#define VERILATED_VSYS___024ROOT_H_  // guard

#include "verilated.h"

class Vsys__Syms;

class Vsys___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(io_ckl,0,0);
    VL_IN8(io_rst_n,0,0);
    VL_OUT8(io_sys_clk,0,0);
    VL_OUT8(io_sys_rst_n,0,0);
    VL_IN8(clk,0,0);
    VL_IN8(reset,0,0);
    CData/*0:0*/ sys__DOT__clkarea_rst_one;
    CData/*0:0*/ __Vtrigrprev__TOP__io_ckl;
    CData/*0:0*/ __VactDidInit;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VstlIterCount;
    IData/*31:0*/ __VicoIterCount;
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vsys__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vsys___024root(Vsys__Syms* symsp, const char* v__name);
    ~Vsys___024root();
    VL_UNCOPYABLE(Vsys___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);


#endif  // guard
