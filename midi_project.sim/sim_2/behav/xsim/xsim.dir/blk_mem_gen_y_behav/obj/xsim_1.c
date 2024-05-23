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
extern void execute_119(char*, char *);
extern void execute_161(char*, char *);
extern void execute_439(char*, char *);
extern void execute_440(char*, char *);
extern void execute_448(char*, char *);
extern void execute_456(char*, char *);
extern void execute_457(char*, char *);
extern void execute_166(char*, char *);
extern void execute_168(char*, char *);
extern void execute_193(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_196(char*, char *);
extern void execute_446(char*, char *);
extern void execute_443(char*, char *);
extern void execute_444(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void execute_454(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_140(char*, char *);
extern void execute_128(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_132(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_192(char*, char *);
extern void execute_181(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_184(char*, char *);
extern void execute_203(char*, char *);
extern void execute_432(char*, char *);
extern void execute_433(char*, char *);
extern void execute_207(char*, char *);
extern void execute_209(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_252(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_423(char*, char *);
extern void execute_406(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_215(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_223(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_244(char*, char *);
extern void execute_232(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_236(char*, char *);
extern void execute_395(char*, char *);
extern void execute_265(char*, char *);
extern void execute_268(char*, char *);
extern void execute_321(char*, char *);
extern void execute_352(char*, char *);
extern void execute_353(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_284(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_287(char*, char *);
extern void execute_289(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_329(char*, char *);
extern void execute_357(char*, char *);
extern void execute_358(char*, char *);
extern void execute_361(char*, char *);
extern void execute_362(char*, char *);
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_389(char*, char *);
extern void execute_317(char*, char *);
extern void execute_318(char*, char *);
extern void execute_320(char*, char *);
extern void execute_308(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_312(char*, char *);
extern void execute_367(char*, char *);
extern void execute_429(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_57(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_59(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_221(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[125] = {(funcp)execute_119, (funcp)execute_161, (funcp)execute_439, (funcp)execute_440, (funcp)execute_448, (funcp)execute_456, (funcp)execute_457, (funcp)execute_166, (funcp)execute_168, (funcp)execute_193, (funcp)execute_171, (funcp)execute_172, (funcp)execute_196, (funcp)execute_446, (funcp)execute_443, (funcp)execute_444, (funcp)execute_452, (funcp)execute_453, (funcp)execute_454, (funcp)execute_137, (funcp)execute_138, (funcp)execute_140, (funcp)execute_128, (funcp)execute_134, (funcp)execute_135, (funcp)execute_132, (funcp)execute_189, (funcp)execute_190, (funcp)execute_192, (funcp)execute_181, (funcp)execute_186, (funcp)execute_187, (funcp)execute_184, (funcp)execute_203, (funcp)execute_432, (funcp)execute_433, (funcp)execute_207, (funcp)execute_209, (funcp)execute_248, (funcp)execute_249, (funcp)execute_252, (funcp)execute_407, (funcp)execute_408, (funcp)execute_423, (funcp)execute_406, (funcp)execute_411, (funcp)execute_412, (funcp)execute_215, (funcp)execute_216, (funcp)execute_217, (funcp)execute_223, (funcp)execute_241, (funcp)execute_242, (funcp)execute_244, (funcp)execute_232, (funcp)execute_238, (funcp)execute_239, (funcp)execute_236, (funcp)execute_395, (funcp)execute_265, (funcp)execute_268, (funcp)execute_321, (funcp)execute_352, (funcp)execute_353, (funcp)execute_276, (funcp)execute_277, (funcp)execute_299, (funcp)execute_300, (funcp)execute_279, (funcp)execute_280, (funcp)execute_281, (funcp)execute_282, (funcp)execute_284, (funcp)execute_285, (funcp)execute_286, (funcp)execute_287, (funcp)execute_289, (funcp)execute_290, (funcp)execute_291, (funcp)execute_292, (funcp)execute_294, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_329, (funcp)execute_357, (funcp)execute_358, (funcp)execute_361, (funcp)execute_362, (funcp)execute_376, (funcp)execute_377, (funcp)execute_381, (funcp)execute_382, (funcp)execute_387, (funcp)execute_388, (funcp)execute_389, (funcp)execute_317, (funcp)execute_318, (funcp)execute_320, (funcp)execute_308, (funcp)execute_314, (funcp)execute_315, (funcp)execute_312, (funcp)execute_367, (funcp)execute_429, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_57, (funcp)transaction_58, (funcp)transaction_59, (funcp)transaction_66, (funcp)transaction_80, (funcp)transaction_84, (funcp)transaction_91, (funcp)transaction_100, (funcp)transaction_221};
const int NumRelocateId= 125;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/blk_mem_gen_y_behav/xsim.reloc",  (void **)funcTab, 125);
	iki_vhdl_file_variable_register(dp + 560352);
	iki_vhdl_file_variable_register(dp + 560408);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/blk_mem_gen_y_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/blk_mem_gen_y_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/blk_mem_gen_y_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/blk_mem_gen_y_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/blk_mem_gen_y_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
