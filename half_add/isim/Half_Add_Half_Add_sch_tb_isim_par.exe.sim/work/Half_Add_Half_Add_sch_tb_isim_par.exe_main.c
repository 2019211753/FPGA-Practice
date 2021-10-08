/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *VL_P_2533777724;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_m_00000000000648012491_3151998091_3926303732_init();
    simprims_ver_m_00000000000648012491_3151998091_0530689230_init();
    simprims_ver_m_00000000001867363923_1692233196_3926303732_init();
    simprims_ver_m_00000000001867363923_1692233196_0530689230_init();
    simprims_ver_m_00000000003359274523_2662658903_0458521843_init();
    simprims_ver_m_00000000003359274523_2662658903_0019994871_init();
    simprims_ver_m_00000000001255213976_2021654676_0458521843_init();
    simprims_ver_m_00000000001255213976_2021654676_0019994871_init();
    simprims_ver_m_00000000001255213976_2021654676_2208733601_init();
    simprims_ver_m_00000000001255213976_2021654676_1580220452_init();
    simprims_ver_m_00000000001255213976_2021654676_3824823530_init();
    simprims_ver_m_00000000001255213976_2021654676_1047328111_init();
    simprims_ver_m_00000000001255213976_2021654676_1378907402_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000001255213976_1568745154_init();
    simprims_ver_m_00000000001255213976_1547914485_init();
    simprims_ver_m_00000000001255213976_1577448108_init();
    simprims_ver_m_00000000001255213976_1606916251_init();
    simprims_ver_m_00000000002399568039_3683447042_init();
    simprims_ver_m_00000000000740258969_1617336979_init();
    simprims_ver_m_00000000000740258969_2310334362_init();
    simprims_ver_m_00000000003750641003_2989191503_init();
    simprims_ver_m_00000000000017215082_0060775741_2208733601_init();
    simprims_ver_m_00000000000017215082_0060775741_1580220452_init();
    simprims_ver_m_00000000000017215082_0060775741_3824823530_init();
    simprims_ver_m_00000000000017215082_0060775741_1047328111_init();
    simprims_ver_m_00000000003598591109_0195502421_1378907402_init();
    simprims_ver_m_00000000003598591109_3851932110_1378907402_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    simprims_ver_m_00000000000126354981_0818475687_init();
    work_m_00000000003694332775_3294641041_init();
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    vl_p_2533777724_init();
    work_a_0247650466_3212880686_init();


    xsi_register_tops("work_a_0247650466_3212880686");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
