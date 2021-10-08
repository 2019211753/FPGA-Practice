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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/EDA/half_add/netgen/par/Half_Add_timesim.v";
static const char *ng1 = "netgen/par/half_add_timesim.sdf";
static const char *ng2 = "";
static const char *ng3 = "TYPICAL";
static const char *ng4 = "1.0:1.0:1.0";
static const char *ng5 = "FROM_MTM";



static void Initial_292_0(char *t0)
{

LAB0:    xsi_set_current_line(292, ng0);
    xsi_vlog_sdfAnnotate(t0, ng1, -1, ng2, ng2, ng2, ng3, ng4, ng5);

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 44056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 26328U);
    t4 = *((char **)t2);
    t2 = (t0 + 26168U);
    t5 = *((char **)t2);
    t2 = (t0 + 26008U);
    t6 = *((char **)t2);
    t2 = (t0 + 25848U);
    t7 = *((char **)t2);
    t2 = (t0 + 25688U);
    t8 = *((char **)t2);
    t2 = (t0 + 25528U);
    t9 = *((char **)t2);
    t2 = (t0 + 25368U);
    t10 = *((char **)t2);
    xsi_vlogtype_concat(t3, 7, 7, 7U, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46304);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 127U;
    t16 = t15;
    t17 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t2, 0, 6);
    t23 = (t0 + 46112);
    *((int *)t23) = 1;

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;

LAB0:    t1 = (t0 + 44304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 28888U);
    t4 = *((char **)t2);
    t2 = (t0 + 28728U);
    t5 = *((char **)t2);
    t2 = (t0 + 28568U);
    t6 = *((char **)t2);
    t2 = (t0 + 28408U);
    t7 = *((char **)t2);
    t2 = (t0 + 28248U);
    t8 = *((char **)t2);
    t2 = (t0 + 28088U);
    t9 = *((char **)t2);
    t2 = (t0 + 27928U);
    t10 = *((char **)t2);
    t2 = (t0 + 27768U);
    t11 = *((char **)t2);
    t2 = (t0 + 27608U);
    t12 = *((char **)t2);
    t2 = (t0 + 27448U);
    t13 = *((char **)t2);
    t2 = (t0 + 27288U);
    t14 = *((char **)t2);
    t2 = (t0 + 27128U);
    t15 = *((char **)t2);
    t2 = (t0 + 26968U);
    t16 = *((char **)t2);
    t2 = (t0 + 26808U);
    t17 = *((char **)t2);
    t2 = (t0 + 26648U);
    t18 = *((char **)t2);
    t2 = (t0 + 26488U);
    t19 = *((char **)t2);
    xsi_vlogtype_concat(t3, 16, 16, 16U, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46368);
    t20 = (t2 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t23, 0, 8);
    t24 = 65535U;
    t25 = t24;
    t26 = (t3 + 4);
    t27 = *((unsigned int *)t3);
    t24 = (t24 & t27);
    t28 = *((unsigned int *)t26);
    t25 = (t25 & t28);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t30 | t24);
    t31 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t31 | t25);
    xsi_driver_vfirst_trans(t2, 0, 15);
    t32 = (t0 + 46128);
    *((int *)t32) = 1;

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 44552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 30488U);
    t4 = *((char **)t2);
    t2 = (t0 + 30328U);
    t5 = *((char **)t2);
    t2 = (t0 + 30168U);
    t6 = *((char **)t2);
    t2 = (t0 + 30008U);
    t7 = *((char **)t2);
    t2 = (t0 + 29848U);
    t8 = *((char **)t2);
    t2 = (t0 + 29688U);
    t9 = *((char **)t2);
    t2 = (t0 + 29528U);
    t10 = *((char **)t2);
    xsi_vlogtype_concat(t3, 7, 7, 7U, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46432);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 127U;
    t16 = t15;
    t17 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t2, 0, 6);
    t23 = (t0 + 46144);
    *((int *)t23) = 1;

LAB1:    return;
}

static void implSig4_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;

LAB0:    t1 = (t0 + 44800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 33048U);
    t4 = *((char **)t2);
    t2 = (t0 + 32888U);
    t5 = *((char **)t2);
    t2 = (t0 + 32728U);
    t6 = *((char **)t2);
    t2 = (t0 + 32568U);
    t7 = *((char **)t2);
    t2 = (t0 + 32408U);
    t8 = *((char **)t2);
    t2 = (t0 + 32248U);
    t9 = *((char **)t2);
    t2 = (t0 + 32088U);
    t10 = *((char **)t2);
    t2 = (t0 + 31928U);
    t11 = *((char **)t2);
    t2 = (t0 + 31768U);
    t12 = *((char **)t2);
    t2 = (t0 + 31608U);
    t13 = *((char **)t2);
    t2 = (t0 + 31448U);
    t14 = *((char **)t2);
    t2 = (t0 + 31288U);
    t15 = *((char **)t2);
    t2 = (t0 + 31128U);
    t16 = *((char **)t2);
    t2 = (t0 + 30968U);
    t17 = *((char **)t2);
    t2 = (t0 + 30808U);
    t18 = *((char **)t2);
    t2 = (t0 + 30648U);
    t19 = *((char **)t2);
    xsi_vlogtype_concat(t3, 16, 16, 16U, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46496);
    t20 = (t2 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t23, 0, 8);
    t24 = 65535U;
    t25 = t24;
    t26 = (t3 + 4);
    t27 = *((unsigned int *)t3);
    t24 = (t24 & t27);
    t28 = *((unsigned int *)t26);
    t25 = (t25 & t28);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t30 | t24);
    t31 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t31 | t25);
    xsi_driver_vfirst_trans(t2, 0, 15);
    t32 = (t0 + 46160);
    *((int *)t32) = 1;

LAB1:    return;
}

static void implSig5_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 45048U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 34648U);
    t4 = *((char **)t2);
    t2 = (t0 + 34488U);
    t5 = *((char **)t2);
    t2 = (t0 + 34328U);
    t6 = *((char **)t2);
    t2 = (t0 + 34168U);
    t7 = *((char **)t2);
    t2 = (t0 + 34008U);
    t8 = *((char **)t2);
    t2 = (t0 + 33848U);
    t9 = *((char **)t2);
    t2 = (t0 + 33688U);
    t10 = *((char **)t2);
    xsi_vlogtype_concat(t3, 7, 7, 7U, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46560);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 127U;
    t16 = t15;
    t17 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t2, 0, 6);
    t23 = (t0 + 46176);
    *((int *)t23) = 1;

LAB1:    return;
}

static void implSig6_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;

LAB0:    t1 = (t0 + 45296U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 37208U);
    t4 = *((char **)t2);
    t2 = (t0 + 37048U);
    t5 = *((char **)t2);
    t2 = (t0 + 36888U);
    t6 = *((char **)t2);
    t2 = (t0 + 36728U);
    t7 = *((char **)t2);
    t2 = (t0 + 36568U);
    t8 = *((char **)t2);
    t2 = (t0 + 36408U);
    t9 = *((char **)t2);
    t2 = (t0 + 36248U);
    t10 = *((char **)t2);
    t2 = (t0 + 36088U);
    t11 = *((char **)t2);
    t2 = (t0 + 35928U);
    t12 = *((char **)t2);
    t2 = (t0 + 35768U);
    t13 = *((char **)t2);
    t2 = (t0 + 35608U);
    t14 = *((char **)t2);
    t2 = (t0 + 35448U);
    t15 = *((char **)t2);
    t2 = (t0 + 35288U);
    t16 = *((char **)t2);
    t2 = (t0 + 35128U);
    t17 = *((char **)t2);
    t2 = (t0 + 34968U);
    t18 = *((char **)t2);
    t2 = (t0 + 34808U);
    t19 = *((char **)t2);
    xsi_vlogtype_concat(t3, 16, 16, 16U, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46624);
    t20 = (t2 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t23, 0, 8);
    t24 = 65535U;
    t25 = t24;
    t26 = (t3 + 4);
    t27 = *((unsigned int *)t3);
    t24 = (t24 & t27);
    t28 = *((unsigned int *)t26);
    t25 = (t25 & t28);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t30 | t24);
    t31 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t31 | t25);
    xsi_driver_vfirst_trans(t2, 0, 15);
    t32 = (t0 + 46192);
    *((int *)t32) = 1;

LAB1:    return;
}

static void implSig7_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;

LAB0:    t1 = (t0 + 45544U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 38808U);
    t4 = *((char **)t2);
    t2 = (t0 + 38648U);
    t5 = *((char **)t2);
    t2 = (t0 + 38488U);
    t6 = *((char **)t2);
    t2 = (t0 + 38328U);
    t7 = *((char **)t2);
    t2 = (t0 + 38168U);
    t8 = *((char **)t2);
    t2 = (t0 + 38008U);
    t9 = *((char **)t2);
    t2 = (t0 + 37848U);
    t10 = *((char **)t2);
    xsi_vlogtype_concat(t3, 7, 7, 7U, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46688);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memset(t14, 0, 8);
    t15 = 127U;
    t16 = t15;
    t17 = (t3 + 4);
    t18 = *((unsigned int *)t3);
    t15 = (t15 & t18);
    t19 = *((unsigned int *)t17);
    t16 = (t16 & t19);
    t20 = (t14 + 4);
    t21 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t21 | t15);
    t22 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t22 | t16);
    xsi_driver_vfirst_trans(t2, 0, 6);
    t23 = (t0 + 46208);
    *((int *)t23) = 1;

LAB1:    return;
}

static void implSig8_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;

LAB0:    t1 = (t0 + 45792U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 41368U);
    t4 = *((char **)t2);
    t2 = (t0 + 41208U);
    t5 = *((char **)t2);
    t2 = (t0 + 41048U);
    t6 = *((char **)t2);
    t2 = (t0 + 40888U);
    t7 = *((char **)t2);
    t2 = (t0 + 40728U);
    t8 = *((char **)t2);
    t2 = (t0 + 40568U);
    t9 = *((char **)t2);
    t2 = (t0 + 40408U);
    t10 = *((char **)t2);
    t2 = (t0 + 40248U);
    t11 = *((char **)t2);
    t2 = (t0 + 40088U);
    t12 = *((char **)t2);
    t2 = (t0 + 39928U);
    t13 = *((char **)t2);
    t2 = (t0 + 39768U);
    t14 = *((char **)t2);
    t2 = (t0 + 39608U);
    t15 = *((char **)t2);
    t2 = (t0 + 39448U);
    t16 = *((char **)t2);
    t2 = (t0 + 39288U);
    t17 = *((char **)t2);
    t2 = (t0 + 39128U);
    t18 = *((char **)t2);
    t2 = (t0 + 38968U);
    t19 = *((char **)t2);
    xsi_vlogtype_concat(t3, 16, 16, 16U, t19, 1, t18, 1, t17, 1, t16, 1, t15, 1, t14, 1, t13, 1, t12, 1, t11, 1, t10, 1, t9, 1, t8, 1, t7, 1, t6, 1, t5, 1, t4, 1);
    t2 = (t0 + 46752);
    t20 = (t2 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t23, 0, 8);
    t24 = 65535U;
    t25 = t24;
    t26 = (t3 + 4);
    t27 = *((unsigned int *)t3);
    t24 = (t24 & t27);
    t28 = *((unsigned int *)t26);
    t25 = (t25 & t28);
    t29 = (t23 + 4);
    t30 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t30 | t24);
    t31 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t31 | t25);
    xsi_driver_vfirst_trans(t2, 0, 15);
    t32 = (t0 + 46224);
    *((int *)t32) = 1;

LAB1:    return;
}


extern void work_m_00000000003694332775_3294641041_init()
{
	static char *pe[] = {(void *)Initial_292_0,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute,(void *)implSig6_execute,(void *)implSig7_execute,(void *)implSig8_execute};
	xsi_register_didat("work_m_00000000003694332775_3294641041", "isim/Half_Add_Half_Add_sch_tb_isim_par.exe.sim/work/m_00000000003694332775_3294641041.didat");
	xsi_register_executes(pe);
}
