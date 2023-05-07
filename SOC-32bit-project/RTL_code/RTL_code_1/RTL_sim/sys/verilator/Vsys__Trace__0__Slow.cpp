// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vsys__Syms.h"


VL_ATTR_COLD void Vsys___024root__trace_init_sub__TOP__0(Vsys___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+1,"io_ckl", false,-1);
    tracep->declBit(c+2,"io_rst_n", false,-1);
    tracep->declBit(c+3,"io_sys_clk", false,-1);
    tracep->declBit(c+4,"io_sys_rst_n", false,-1);
    tracep->declBit(c+5,"clk", false,-1);
    tracep->declBit(c+6,"reset", false,-1);
    tracep->pushNamePrefix("sys ");
    tracep->declBit(c+1,"io_ckl", false,-1);
    tracep->declBit(c+2,"io_rst_n", false,-1);
    tracep->declBit(c+3,"io_sys_clk", false,-1);
    tracep->declBit(c+4,"io_sys_rst_n", false,-1);
    tracep->declBit(c+5,"clk", false,-1);
    tracep->declBit(c+6,"reset", false,-1);
    tracep->declBit(c+7,"clkarea_rst_one", false,-1);
    tracep->popNamePrefix(1);
}

VL_ATTR_COLD void Vsys___024root__trace_init_top(Vsys___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_init_top\n"); );
    // Body
    Vsys___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vsys___024root__trace_full_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vsys___024root__trace_chg_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vsys___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vsys___024root__trace_register(Vsys___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_register\n"); );
    // Body
    tracep->addFullCb(&Vsys___024root__trace_full_top_0, vlSelf);
    tracep->addChgCb(&Vsys___024root__trace_chg_top_0, vlSelf);
    tracep->addCleanupCb(&Vsys___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vsys___024root__trace_full_sub_0(Vsys___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vsys___024root__trace_full_top_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_full_top_0\n"); );
    // Init
    Vsys___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vsys___024root*>(voidSelf);
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vsys___024root__trace_full_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vsys___024root__trace_full_sub_0(Vsys___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root__trace_full_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->io_ckl));
    bufp->fullBit(oldp+2,(vlSelf->io_rst_n));
    bufp->fullBit(oldp+3,(vlSelf->io_sys_clk));
    bufp->fullBit(oldp+4,(vlSelf->io_sys_rst_n));
    bufp->fullBit(oldp+5,(vlSelf->clk));
    bufp->fullBit(oldp+6,(vlSelf->reset));
    bufp->fullBit(oldp+7,(vlSelf->sys__DOT__clkarea_rst_one));
}
