// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsys.h for the primary calling header

#include "verilated.h"

#include "Vsys___024root.h"

VL_ATTR_COLD void Vsys___024root___eval_static(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vsys___024root___eval_initial(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigrprev__TOP__io_ckl = vlSelf->io_ckl;
}

VL_ATTR_COLD void Vsys___024root___eval_final(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vsys___024root___eval_triggers__stl(Vsys___024root* vlSelf);
#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__stl(Vsys___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD void Vsys___024root___eval_stl(Vsys___024root* vlSelf);

VL_ATTR_COLD void Vsys___024root___eval_settle(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_settle\n"); );
    // Init
    CData/*0:0*/ __VstlContinue;
    // Body
    vlSelf->__VstlIterCount = 0U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        __VstlContinue = 0U;
        Vsys___024root___eval_triggers__stl(vlSelf);
        if (vlSelf->__VstlTriggered.any()) {
            __VstlContinue = 1U;
            if (VL_UNLIKELY((0x64U < vlSelf->__VstlIterCount))) {
#ifdef VL_DEBUG
                Vsys___024root___dump_triggers__stl(vlSelf);
#endif
                VL_FATAL_MT("/home/adgert/Desktop/test/git-project/SOC_test/SOC-32bit-project/RTL_code/RTL_code_1/tmp/job_1/sys.v", 7, "", "Settle region did not converge.");
            }
            vlSelf->__VstlIterCount = ((IData)(1U) 
                                       + vlSelf->__VstlIterCount);
            Vsys___024root___eval_stl(vlSelf);
        }
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__stl(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VstlTriggered.at(0U)) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vsys___024root___stl_sequent__TOP__0(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->io_sys_clk = vlSelf->io_ckl;
    vlSelf->io_sys_rst_n = vlSelf->sys__DOT__clkarea_rst_one;
}

VL_ATTR_COLD void Vsys___024root___eval_stl(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_stl\n"); );
    // Body
    if (vlSelf->__VstlTriggered.at(0U)) {
        Vsys___024root___stl_sequent__TOP__0(vlSelf);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__ico(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VicoTriggered.at(0U)) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__act(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VactTriggered.at(0U)) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge io_ckl)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__nba(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if (vlSelf->__VnbaTriggered.at(0U)) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge io_ckl)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vsys___024root___ctor_var_reset(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->io_ckl = 0;
    vlSelf->io_rst_n = VL_RAND_RESET_I(1);
    vlSelf->io_sys_clk = VL_RAND_RESET_I(1);
    vlSelf->io_sys_rst_n = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->reset = VL_RAND_RESET_I(1);
    vlSelf->sys__DOT__clkarea_rst_one = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigrprev__TOP__io_ckl = VL_RAND_RESET_I(1);
    vlSelf->__VactDidInit = 0;
}
