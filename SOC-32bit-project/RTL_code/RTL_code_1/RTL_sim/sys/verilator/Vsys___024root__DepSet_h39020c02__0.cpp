// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsys.h for the primary calling header

#include "verilated.h"

#include "Vsys___024root.h"

VL_INLINE_OPT void Vsys___024root___ico_sequent__TOP__0(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->io_sys_clk = vlSelf->io_ckl;
}

void Vsys___024root___eval_ico(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_ico\n"); );
    // Body
    if (vlSelf->__VicoTriggered.at(0U)) {
        Vsys___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void Vsys___024root___eval_act(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vsys___024root___nba_sequent__TOP__0(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___nba_sequent__TOP__0\n"); );
    // Body
    vlSelf->sys__DOT__clkarea_rst_one = vlSelf->io_rst_n;
    vlSelf->io_sys_rst_n = vlSelf->sys__DOT__clkarea_rst_one;
}

void Vsys___024root___eval_nba(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_nba\n"); );
    // Body
    if (vlSelf->__VnbaTriggered.at(0U)) {
        Vsys___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vsys___024root___eval_triggers__ico(Vsys___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__ico(Vsys___024root* vlSelf);
#endif  // VL_DEBUG
void Vsys___024root___eval_triggers__act(Vsys___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__act(Vsys___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__nba(Vsys___024root* vlSelf);
#endif  // VL_DEBUG

void Vsys___024root___eval(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval\n"); );
    // Init
    CData/*0:0*/ __VicoContinue;
    VlTriggerVec<1> __VpreTriggered;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    vlSelf->__VicoIterCount = 0U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        __VicoContinue = 0U;
        Vsys___024root___eval_triggers__ico(vlSelf);
        if (vlSelf->__VicoTriggered.any()) {
            __VicoContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VicoIterCount))) {
#ifdef VL_DEBUG
                Vsys___024root___dump_triggers__ico(vlSelf);
#endif
                VL_FATAL_MT("/home/adgert/Desktop/test/git-project/SOC_test/SOC-32bit-project/RTL_code/RTL_code_1/tmp/job_1/sys.v", 7, "", "Input combinational region did not converge.");
            }
            vlSelf->__VicoIterCount = ((IData)(1U) 
                                       + vlSelf->__VicoIterCount);
            Vsys___024root___eval_ico(vlSelf);
        }
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        __VnbaContinue = 0U;
        vlSelf->__VnbaTriggered.clear();
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            vlSelf->__VactContinue = 0U;
            Vsys___024root___eval_triggers__act(vlSelf);
            if (vlSelf->__VactTriggered.any()) {
                vlSelf->__VactContinue = 1U;
                if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                    Vsys___024root___dump_triggers__act(vlSelf);
#endif
                    VL_FATAL_MT("/home/adgert/Desktop/test/git-project/SOC_test/SOC-32bit-project/RTL_code/RTL_code_1/tmp/job_1/sys.v", 7, "", "Active region did not converge.");
                }
                vlSelf->__VactIterCount = ((IData)(1U) 
                                           + vlSelf->__VactIterCount);
                __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
                vlSelf->__VnbaTriggered.set(vlSelf->__VactTriggered);
                Vsys___024root___eval_act(vlSelf);
            }
        }
        if (vlSelf->__VnbaTriggered.any()) {
            __VnbaContinue = 1U;
            if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
                Vsys___024root___dump_triggers__nba(vlSelf);
#endif
                VL_FATAL_MT("/home/adgert/Desktop/test/git-project/SOC_test/SOC-32bit-project/RTL_code/RTL_code_1/tmp/job_1/sys.v", 7, "", "NBA region did not converge.");
            }
            __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
            Vsys___024root___eval_nba(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
void Vsys___024root___eval_debug_assertions(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->io_ckl & 0xfeU))) {
        Verilated::overWidthError("io_ckl");}
    if (VL_UNLIKELY((vlSelf->io_rst_n & 0xfeU))) {
        Verilated::overWidthError("io_rst_n");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
}
#endif  // VL_DEBUG
