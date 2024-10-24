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
extern void execute_29(char*, char *);
extern void execute_931(char*, char *);
extern void execute_932(char*, char *);
extern void execute_933(char*, char *);
extern void execute_934(char*, char *);
extern void execute_935(char*, char *);
extern void execute_936(char*, char *);
extern void execute_937(char*, char *);
extern void execute_938(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_37(char*, char *);
extern void execute_38(char*, char *);
extern void execute_930(char*, char *);
extern void execute_91(char*, char *);
extern void execute_143(char*, char *);
extern void execute_195(char*, char *);
extern void execute_247(char*, char *);
extern void execute_301(char*, char *);
extern void execute_353(char*, char *);
extern void execute_405(char*, char *);
extern void execute_457(char*, char *);
extern void execute_511(char*, char *);
extern void execute_563(char*, char *);
extern void execute_615(char*, char *);
extern void execute_667(char*, char *);
extern void execute_721(char*, char *);
extern void execute_773(char*, char *);
extern void execute_825(char*, char *);
extern void execute_877(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[54] = {(funcp)execute_29, (funcp)execute_931, (funcp)execute_932, (funcp)execute_933, (funcp)execute_934, (funcp)execute_935, (funcp)execute_936, (funcp)execute_937, (funcp)execute_938, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_37, (funcp)execute_38, (funcp)execute_930, (funcp)execute_91, (funcp)execute_143, (funcp)execute_195, (funcp)execute_247, (funcp)execute_301, (funcp)execute_353, (funcp)execute_405, (funcp)execute_457, (funcp)execute_511, (funcp)execute_563, (funcp)execute_615, (funcp)execute_667, (funcp)execute_721, (funcp)execute_773, (funcp)execute_825, (funcp)execute_877, (funcp)execute_46, (funcp)execute_47, (funcp)execute_52, (funcp)execute_53, (funcp)execute_58, (funcp)execute_59, (funcp)execute_64, (funcp)execute_65, (funcp)execute_70, (funcp)execute_71, (funcp)execute_76, (funcp)execute_77, (funcp)execute_82, (funcp)execute_83, (funcp)execute_88, (funcp)execute_89, (funcp)execute_44, (funcp)execute_45, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 54;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/top_sim_behav/xsim.reloc",  (void **)funcTab, 54);
	iki_vhdl_file_variable_register(dp + 63432);
	iki_vhdl_file_variable_register(dp + 63488);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/top_sim_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/top_sim_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/top_sim_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/top_sim_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/top_sim_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
