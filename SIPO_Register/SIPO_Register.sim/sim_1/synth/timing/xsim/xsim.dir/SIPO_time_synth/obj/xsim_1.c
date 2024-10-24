/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void vlog_timingcheck_execute_0(char*, char*, char*);
extern void execute_42(char*, char *);
extern void execute_5(char*, char *);
extern void execute_43(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_10(char*, char *);
extern void execute_11(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_1(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_2(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_3(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_4(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_5(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_6(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_7(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_8(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_9(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_10(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_11(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_12(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_13(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_14(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_15(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_16(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_17(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_18(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_19(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_20(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_21(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_22(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_23(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_24(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_25(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_26(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_27(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_28(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_29(char*, char *);
extern void timing_checker_condition_m_e213164e_af79f1dc_30(char*, char *);
extern void execute_77(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_13(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_1(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_2(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_3(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_4(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_6(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_16(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_17(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_21(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_23(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[104] = {(funcp)execute_2, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_128, (funcp)execute_129, (funcp)execute_38, (funcp)execute_39, (funcp)vlog_timingcheck_execute_0, (funcp)execute_42, (funcp)execute_5, (funcp)execute_43, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_8, (funcp)execute_9, (funcp)execute_10, (funcp)execute_11, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)timing_checker_condition_m_e213164e_af79f1dc_1, (funcp)timing_checker_condition_m_e213164e_af79f1dc_2, (funcp)timing_checker_condition_m_e213164e_af79f1dc_3, (funcp)timing_checker_condition_m_e213164e_af79f1dc_4, (funcp)timing_checker_condition_m_e213164e_af79f1dc_5, (funcp)timing_checker_condition_m_e213164e_af79f1dc_6, (funcp)timing_checker_condition_m_e213164e_af79f1dc_7, (funcp)timing_checker_condition_m_e213164e_af79f1dc_8, (funcp)timing_checker_condition_m_e213164e_af79f1dc_9, (funcp)timing_checker_condition_m_e213164e_af79f1dc_10, (funcp)timing_checker_condition_m_e213164e_af79f1dc_11, (funcp)timing_checker_condition_m_e213164e_af79f1dc_12, (funcp)timing_checker_condition_m_e213164e_af79f1dc_13, (funcp)timing_checker_condition_m_e213164e_af79f1dc_14, (funcp)timing_checker_condition_m_e213164e_af79f1dc_15, (funcp)timing_checker_condition_m_e213164e_af79f1dc_16, (funcp)timing_checker_condition_m_e213164e_af79f1dc_17, (funcp)timing_checker_condition_m_e213164e_af79f1dc_18, (funcp)timing_checker_condition_m_e213164e_af79f1dc_19, (funcp)timing_checker_condition_m_e213164e_af79f1dc_20, (funcp)timing_checker_condition_m_e213164e_af79f1dc_21, (funcp)timing_checker_condition_m_e213164e_af79f1dc_22, (funcp)timing_checker_condition_m_e213164e_af79f1dc_23, (funcp)timing_checker_condition_m_e213164e_af79f1dc_24, (funcp)timing_checker_condition_m_e213164e_af79f1dc_25, (funcp)timing_checker_condition_m_e213164e_af79f1dc_26, (funcp)timing_checker_condition_m_e213164e_af79f1dc_27, (funcp)timing_checker_condition_m_e213164e_af79f1dc_28, (funcp)timing_checker_condition_m_e213164e_af79f1dc_29, (funcp)timing_checker_condition_m_e213164e_af79f1dc_30, (funcp)execute_77, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_13, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)transaction_0, (funcp)transaction_1, (funcp)transaction_2, (funcp)transaction_3, (funcp)transaction_4, (funcp)transaction_5, (funcp)transaction_6, (funcp)transaction_7, (funcp)transaction_8, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_16, (funcp)transaction_17, (funcp)transaction_18, (funcp)transaction_21, (funcp)transaction_22, (funcp)transaction_23, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_33};
const int NumRelocateId= 104;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/SIPO_time_synth/xsim.reloc",  (void **)funcTab, 104);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/SIPO_time_synth/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/SIPO_time_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/SIPO_time_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/SIPO_time_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/SIPO_time_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
