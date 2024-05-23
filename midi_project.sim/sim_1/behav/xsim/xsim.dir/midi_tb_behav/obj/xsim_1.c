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
extern void execute_507(char*, char *);
extern void execute_508(char*, char *);
extern void execute_509(char*, char *);
extern void execute_510(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_159(char*, char *);
extern void execute_201(char*, char *);
extern void execute_474(char*, char *);
extern void execute_475(char*, char *);
extern void execute_483(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_206(char*, char *);
extern void execute_208(char*, char *);
extern void execute_233(char*, char *);
extern void execute_211(char*, char *);
extern void execute_212(char*, char *);
extern void execute_236(char*, char *);
extern void execute_481(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_177(char*, char *);
extern void execute_178(char*, char *);
extern void execute_180(char*, char *);
extern void execute_168(char*, char *);
extern void execute_174(char*, char *);
extern void execute_175(char*, char *);
extern void execute_172(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_232(char*, char *);
extern void execute_221(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_224(char*, char *);
extern void execute_243(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_247(char*, char *);
extern void execute_249(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_292(char*, char *);
extern void execute_442(char*, char *);
extern void execute_443(char*, char *);
extern void execute_458(char*, char *);
extern void execute_441(char*, char *);
extern void execute_446(char*, char *);
extern void execute_447(char*, char *);
extern void execute_255(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_263(char*, char *);
extern void execute_281(char*, char *);
extern void execute_282(char*, char *);
extern void execute_284(char*, char *);
extern void execute_272(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_276(char*, char *);
extern void execute_430(char*, char *);
extern void execute_305(char*, char *);
extern void execute_308(char*, char *);
extern void execute_356(char*, char *);
extern void execute_387(char*, char *);
extern void execute_388(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_321(char*, char *);
extern void execute_322(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_362(char*, char *);
extern void execute_364(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_396(char*, char *);
extern void execute_397(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_416(char*, char *);
extern void execute_417(char*, char *);
extern void execute_422(char*, char *);
extern void execute_423(char*, char *);
extern void execute_424(char*, char *);
extern void execute_352(char*, char *);
extern void execute_353(char*, char *);
extern void execute_355(char*, char *);
extern void execute_343(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_347(char*, char *);
extern void execute_402(char*, char *);
extern void execute_464(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_18(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_144(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_162(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_169(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_178(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_299(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[146] = {(funcp)execute_507, (funcp)execute_508, (funcp)execute_509, (funcp)execute_510, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_159, (funcp)execute_201, (funcp)execute_474, (funcp)execute_475, (funcp)execute_483, (funcp)execute_491, (funcp)execute_492, (funcp)execute_206, (funcp)execute_208, (funcp)execute_233, (funcp)execute_211, (funcp)execute_212, (funcp)execute_236, (funcp)execute_481, (funcp)execute_478, (funcp)execute_479, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_177, (funcp)execute_178, (funcp)execute_180, (funcp)execute_168, (funcp)execute_174, (funcp)execute_175, (funcp)execute_172, (funcp)execute_229, (funcp)execute_230, (funcp)execute_232, (funcp)execute_221, (funcp)execute_226, (funcp)execute_227, (funcp)execute_224, (funcp)execute_243, (funcp)execute_467, (funcp)execute_468, (funcp)execute_247, (funcp)execute_249, (funcp)execute_288, (funcp)execute_289, (funcp)execute_292, (funcp)execute_442, (funcp)execute_443, (funcp)execute_458, (funcp)execute_441, (funcp)execute_446, (funcp)execute_447, (funcp)execute_255, (funcp)execute_256, (funcp)execute_257, (funcp)execute_263, (funcp)execute_281, (funcp)execute_282, (funcp)execute_284, (funcp)execute_272, (funcp)execute_278, (funcp)execute_279, (funcp)execute_276, (funcp)execute_430, (funcp)execute_305, (funcp)execute_308, (funcp)execute_356, (funcp)execute_387, (funcp)execute_388, (funcp)execute_316, (funcp)execute_317, (funcp)execute_334, (funcp)execute_335, (funcp)execute_319, (funcp)execute_320, (funcp)execute_321, (funcp)execute_322, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_360, (funcp)execute_361, (funcp)execute_362, (funcp)execute_364, (funcp)execute_392, (funcp)execute_393, (funcp)execute_396, (funcp)execute_397, (funcp)execute_411, (funcp)execute_412, (funcp)execute_416, (funcp)execute_417, (funcp)execute_422, (funcp)execute_423, (funcp)execute_424, (funcp)execute_352, (funcp)execute_353, (funcp)execute_355, (funcp)execute_343, (funcp)execute_349, (funcp)execute_350, (funcp)execute_347, (funcp)execute_402, (funcp)execute_464, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_14, (funcp)transaction_18, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_144, (funcp)transaction_158, (funcp)transaction_162, (funcp)transaction_169, (funcp)transaction_178, (funcp)transaction_299};
const int NumRelocateId= 146;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/midi_tb_behav/xsim.reloc",  (void **)funcTab, 146);
	iki_vhdl_file_variable_register(dp + 109080);
	iki_vhdl_file_variable_register(dp + 109136);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/midi_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/midi_tb_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/midi_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/midi_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/midi_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
