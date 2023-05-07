// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vsys.h for the primary calling header

#include "verilated.h"

#include "Vsys__Syms.h"
#include "Vsys___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__ico(Vsys___024root* vlSelf);
#endif  // VL_DEBUG

void Vsys___024root___eval_triggers__ico(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.at(0U) = (0U == vlSelf->__VicoIterCount);
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vsys___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vsys___024root___dump_triggers__act(Vsys___024root* vlSelf);
#endif  // VL_DEBUG

void Vsys___024root___eval_triggers__act(Vsys___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vsys__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vsys___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.at(0U) = ((IData)(vlSelf->io_ckl) 
                                      & (~ (IData)(vlSelf->__Vtrigrprev__TOP__io_ckl)));
    vlSelf->__Vtrigrprev__TOP__io_ckl = vlSelf->io_ckl;
    if (VL_UNLIKELY((1U & (~ (IData)(vlSelf->__VactDidInit))))) {
        vlSelf->__VactDidInit = 1U;
        vlSelf->__VactTriggered.at(0U) = 1U;
    }
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vsys___024root___dump_triggers__act(vlSelf);
    }
#endif
}
