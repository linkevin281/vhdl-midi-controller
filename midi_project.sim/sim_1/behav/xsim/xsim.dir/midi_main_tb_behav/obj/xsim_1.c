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
extern void execute_562(char*, char *);
extern void execute_563(char*, char *);
extern void execute_558(char*, char *);
extern void execute_559(char*, char *);
extern void execute_560(char*, char *);
extern void execute_561(char*, char *);
extern void execute_49(char*, char *);
extern void execute_52(char*, char *);
extern void execute_51(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
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
extern void execute_101(char*, char *);
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
extern void execute_204(char*, char *);
extern void execute_246(char*, char *);
extern void execute_518(char*, char *);
extern void execute_519(char*, char *);
extern void execute_527(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_251(char*, char *);
extern void execute_253(char*, char *);
extern void execute_278(char*, char *);
extern void execute_256(char*, char *);
extern void execute_257(char*, char *);
extern void execute_281(char*, char *);
extern void execute_525(char*, char *);
extern void execute_522(char*, char *);
extern void execute_523(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_533(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_225(char*, char *);
extern void execute_213(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void execute_217(char*, char *);
extern void execute_274(char*, char *);
extern void execute_275(char*, char *);
extern void execute_277(char*, char *);
extern void execute_266(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_269(char*, char *);
extern void execute_287(char*, char *);
extern void execute_511(char*, char *);
extern void execute_512(char*, char *);
extern void execute_291(char*, char *);
extern void execute_293(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_336(char*, char *);
extern void execute_486(char*, char *);
extern void execute_487(char*, char *);
extern void execute_502(char*, char *);
extern void execute_485(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_307(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_328(char*, char *);
extern void execute_316(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_320(char*, char *);
extern void execute_474(char*, char *);
extern void execute_349(char*, char *);
extern void execute_352(char*, char *);
extern void execute_400(char*, char *);
extern void execute_431(char*, char *);
extern void execute_432(char*, char *);
extern void execute_360(char*, char *);
extern void execute_361(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_365(char*, char *);
extern void execute_366(char*, char *);
extern void execute_368(char*, char *);
extern void execute_369(char*, char *);
extern void execute_370(char*, char *);
extern void execute_371(char*, char *);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_376(char*, char *);
extern void execute_404(char*, char *);
extern void execute_405(char*, char *);
extern void execute_406(char*, char *);
extern void execute_408(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_440(char*, char *);
extern void execute_441(char*, char *);
extern void execute_455(char*, char *);
extern void execute_456(char*, char *);
extern void execute_460(char*, char *);
extern void execute_461(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_396(char*, char *);
extern void execute_397(char*, char *);
extern void execute_399(char*, char *);
extern void execute_387(char*, char *);
extern void execute_393(char*, char *);
extern void execute_394(char*, char *);
extern void execute_391(char*, char *);
extern void execute_446(char*, char *);
extern void execute_508(char*, char *);
extern void execute_552(char*, char *);
extern void execute_553(char*, char *);
extern void execute_554(char*, char *);
extern void execute_555(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_58(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_186(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_187(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_190(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_191(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_197(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_198(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_201(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_202(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_203(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_210(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_224(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_228(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_235(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_244(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_337(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[196] = {(funcp)execute_562, (funcp)execute_563, (funcp)execute_558, (funcp)execute_559, (funcp)execute_560, (funcp)execute_561, (funcp)execute_49, (funcp)execute_52, (funcp)execute_51, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_67, (funcp)execute_68, (funcp)execute_69, (funcp)execute_70, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_86, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_101, (funcp)execute_102, (funcp)execute_103, (funcp)execute_104, (funcp)execute_105, (funcp)execute_106, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_110, (funcp)execute_111, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_115, (funcp)execute_204, (funcp)execute_246, (funcp)execute_518, (funcp)execute_519, (funcp)execute_527, (funcp)execute_535, (funcp)execute_536, (funcp)execute_251, (funcp)execute_253, (funcp)execute_278, (funcp)execute_256, (funcp)execute_257, (funcp)execute_281, (funcp)execute_525, (funcp)execute_522, (funcp)execute_523, (funcp)execute_531, (funcp)execute_532, (funcp)execute_533, (funcp)execute_222, (funcp)execute_223, (funcp)execute_225, (funcp)execute_213, (funcp)execute_219, (funcp)execute_220, (funcp)execute_217, (funcp)execute_274, (funcp)execute_275, (funcp)execute_277, (funcp)execute_266, (funcp)execute_271, (funcp)execute_272, (funcp)execute_269, (funcp)execute_287, (funcp)execute_511, (funcp)execute_512, (funcp)execute_291, (funcp)execute_293, (funcp)execute_332, (funcp)execute_333, (funcp)execute_336, (funcp)execute_486, (funcp)execute_487, (funcp)execute_502, (funcp)execute_485, (funcp)execute_490, (funcp)execute_491, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_307, (funcp)execute_325, (funcp)execute_326, (funcp)execute_328, (funcp)execute_316, (funcp)execute_322, (funcp)execute_323, (funcp)execute_320, (funcp)execute_474, (funcp)execute_349, (funcp)execute_352, (funcp)execute_400, (funcp)execute_431, (funcp)execute_432, (funcp)execute_360, (funcp)execute_361, (funcp)execute_378, (funcp)execute_379, (funcp)execute_363, (funcp)execute_364, (funcp)execute_365, (funcp)execute_366, (funcp)execute_368, (funcp)execute_369, (funcp)execute_370, (funcp)execute_371, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_376, (funcp)execute_404, (funcp)execute_405, (funcp)execute_406, (funcp)execute_408, (funcp)execute_436, (funcp)execute_437, (funcp)execute_440, (funcp)execute_441, (funcp)execute_455, (funcp)execute_456, (funcp)execute_460, (funcp)execute_461, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_396, (funcp)execute_397, (funcp)execute_399, (funcp)execute_387, (funcp)execute_393, (funcp)execute_394, (funcp)execute_391, (funcp)execute_446, (funcp)execute_508, (funcp)execute_552, (funcp)execute_553, (funcp)execute_554, (funcp)execute_555, (funcp)execute_556, (funcp)execute_557, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_33, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_58, (funcp)transaction_75, (funcp)transaction_186, (funcp)transaction_187, (funcp)transaction_190, (funcp)transaction_191, (funcp)transaction_197, (funcp)transaction_198, (funcp)transaction_201, (funcp)transaction_202, (funcp)transaction_203, (funcp)transaction_210, (funcp)transaction_224, (funcp)transaction_228, (funcp)transaction_235, (funcp)transaction_244, (funcp)transaction_337};
const int NumRelocateId= 196;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/midi_main_tb_behav/xsim.reloc",  (void **)funcTab, 196);
	iki_vhdl_file_variable_register(dp + 118408);
	iki_vhdl_file_variable_register(dp + 118464);


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
