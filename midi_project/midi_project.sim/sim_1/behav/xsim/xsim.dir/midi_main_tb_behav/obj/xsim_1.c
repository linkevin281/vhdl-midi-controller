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
extern void execute_590(char*, char *);
extern void execute_591(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_576(char*, char *);
extern void execute_577(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_582(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_587(char*, char *);
extern void execute_588(char*, char *);
extern void execute_589(char*, char *);
extern void execute_59(char*, char *);
extern void execute_62(char*, char *);
extern void execute_61(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_102(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_129(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_220(char*, char *);
extern void execute_262(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_543(char*, char *);
extern void execute_551(char*, char *);
extern void execute_552(char*, char *);
extern void execute_267(char*, char *);
extern void execute_269(char*, char *);
extern void execute_294(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_297(char*, char *);
extern void execute_541(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_547(char*, char *);
extern void execute_548(char*, char *);
extern void execute_549(char*, char *);
extern void execute_238(char*, char *);
extern void execute_239(char*, char *);
extern void execute_241(char*, char *);
extern void execute_229(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_233(char*, char *);
extern void execute_290(char*, char *);
extern void execute_291(char*, char *);
extern void execute_293(char*, char *);
extern void execute_282(char*, char *);
extern void execute_287(char*, char *);
extern void execute_288(char*, char *);
extern void execute_285(char*, char *);
extern void execute_303(char*, char *);
extern void execute_527(char*, char *);
extern void execute_528(char*, char *);
extern void execute_307(char*, char *);
extern void execute_309(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_352(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_518(char*, char *);
extern void execute_501(char*, char *);
extern void execute_506(char*, char *);
extern void execute_507(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_323(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_344(char*, char *);
extern void execute_332(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_336(char*, char *);
extern void execute_490(char*, char *);
extern void execute_365(char*, char *);
extern void execute_368(char*, char *);
extern void execute_416(char*, char *);
extern void execute_447(char*, char *);
extern void execute_448(char*, char *);
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_379(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_384(char*, char *);
extern void execute_385(char*, char *);
extern void execute_386(char*, char *);
extern void execute_387(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_420(char*, char *);
extern void execute_421(char*, char *);
extern void execute_422(char*, char *);
extern void execute_424(char*, char *);
extern void execute_452(char*, char *);
extern void execute_453(char*, char *);
extern void execute_456(char*, char *);
extern void execute_457(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_482(char*, char *);
extern void execute_483(char*, char *);
extern void execute_484(char*, char *);
extern void execute_412(char*, char *);
extern void execute_413(char*, char *);
extern void execute_415(char*, char *);
extern void execute_403(char*, char *);
extern void execute_409(char*, char *);
extern void execute_410(char*, char *);
extern void execute_407(char*, char *);
extern void execute_462(char*, char *);
extern void execute_524(char*, char *);
extern void execute_568(char*, char *);
extern void execute_569(char*, char *);
extern void execute_570(char*, char *);
extern void execute_571(char*, char *);
extern void execute_572(char*, char *);
extern void execute_573(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_68(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_72(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_205(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_206(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_212(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_213(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_216(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_217(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_218(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_225(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_239(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_243(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_250(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_259(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[214] = {(funcp)execute_590, (funcp)execute_591, (funcp)execute_574, (funcp)execute_575, (funcp)execute_576, (funcp)execute_577, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_581, (funcp)execute_582, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_587, (funcp)execute_588, (funcp)execute_589, (funcp)execute_59, (funcp)execute_62, (funcp)execute_61, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_102, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)execute_118, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_127, (funcp)execute_128, (funcp)execute_129, (funcp)execute_130, (funcp)execute_131, (funcp)execute_220, (funcp)execute_262, (funcp)execute_534, (funcp)execute_535, (funcp)execute_543, (funcp)execute_551, (funcp)execute_552, (funcp)execute_267, (funcp)execute_269, (funcp)execute_294, (funcp)execute_272, (funcp)execute_273, (funcp)execute_297, (funcp)execute_541, (funcp)execute_538, (funcp)execute_539, (funcp)execute_547, (funcp)execute_548, (funcp)execute_549, (funcp)execute_238, (funcp)execute_239, (funcp)execute_241, (funcp)execute_229, (funcp)execute_235, (funcp)execute_236, (funcp)execute_233, (funcp)execute_290, (funcp)execute_291, (funcp)execute_293, (funcp)execute_282, (funcp)execute_287, (funcp)execute_288, (funcp)execute_285, (funcp)execute_303, (funcp)execute_527, (funcp)execute_528, (funcp)execute_307, (funcp)execute_309, (funcp)execute_348, (funcp)execute_349, (funcp)execute_352, (funcp)execute_502, (funcp)execute_503, (funcp)execute_518, (funcp)execute_501, (funcp)execute_506, (funcp)execute_507, (funcp)execute_315, (funcp)execute_316, (funcp)execute_317, (funcp)execute_323, (funcp)execute_341, (funcp)execute_342, (funcp)execute_344, (funcp)execute_332, (funcp)execute_338, (funcp)execute_339, (funcp)execute_336, (funcp)execute_490, (funcp)execute_365, (funcp)execute_368, (funcp)execute_416, (funcp)execute_447, (funcp)execute_448, (funcp)execute_376, (funcp)execute_377, (funcp)execute_394, (funcp)execute_395, (funcp)execute_379, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_384, (funcp)execute_385, (funcp)execute_386, (funcp)execute_387, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_420, (funcp)execute_421, (funcp)execute_422, (funcp)execute_424, (funcp)execute_452, (funcp)execute_453, (funcp)execute_456, (funcp)execute_457, (funcp)execute_471, (funcp)execute_472, (funcp)execute_476, (funcp)execute_477, (funcp)execute_482, (funcp)execute_483, (funcp)execute_484, (funcp)execute_412, (funcp)execute_413, (funcp)execute_415, (funcp)execute_403, (funcp)execute_409, (funcp)execute_410, (funcp)execute_407, (funcp)execute_462, (funcp)execute_524, (funcp)execute_568, (funcp)execute_569, (funcp)execute_570, (funcp)execute_571, (funcp)execute_572, (funcp)execute_573, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_46, (funcp)transaction_66, (funcp)transaction_68, (funcp)transaction_72, (funcp)transaction_88, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_205, (funcp)transaction_206, (funcp)transaction_212, (funcp)transaction_213, (funcp)transaction_216, (funcp)transaction_217, (funcp)transaction_218, (funcp)transaction_225, (funcp)transaction_239, (funcp)transaction_243, (funcp)transaction_250, (funcp)transaction_259, (funcp)transaction_352};
const int NumRelocateId= 214;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/midi_main_tb_behav/xsim.reloc",  (void **)funcTab, 214);
	iki_vhdl_file_variable_register(dp + 121624);
	iki_vhdl_file_variable_register(dp + 121680);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/midi_main_tb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/midi_main_tb_behav/xsim.reloc");

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
    iki_set_sv_type_file_path_name("xsim.dir/midi_main_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/midi_main_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/midi_main_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
