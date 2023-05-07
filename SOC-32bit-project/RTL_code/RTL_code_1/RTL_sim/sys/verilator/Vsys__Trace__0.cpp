// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vsys__Syms.h"


void Vsys___024root__trace_chg_sub_0(Vsys___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vsys___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_chg_top_0\n"); );
    // Init
    Vsys___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vsys___024root*>(voidSelf);
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vsys___024root__trace_chg_sub_0((&vlSymsp->TOP), bufp);
}

void Vsys___024root__trace_chg_sub_0(Vsys___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_chg_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    bufp->chgBit(oldp+0,(vlSelf->io_ckl));
    bufp->chgBit(oldp+1,(vlSelf->io_rst_n));
    bufp->chgBit(oldp+2,(vlSelf->io_sys_clk));
    bufp->chgBit(oldp+3,(vlSelf->io_sys_rst_n));
    bufp->chgBit(oldp+4,(vlSelf->clk));
    bufp->chgBit(oldp+5,(vlSelf->reset));
    bufp->chgBit(oldp+6,(vlSelf->sys__DOT__clkarea_rst_one));
}

void Vsys___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_cleanup\n"); );
    // Init
    Vsys___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vsys___024root*>(voidSelf);
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = 0;
    }
    // Body
    vlSymsp->__Vm_activity = false;
    __Vm_traceActivity[0U] = 0U;
}
