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
static const char *ng0 = "D:/EDA/key_board/key_scan.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {14U, 0U};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {13U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {11U, 0U};
static int ng7[] = {3, 0};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {63U, 0U};
static unsigned int ng10[] = {1003U, 0U};
static unsigned int ng11[] = {0U, 0U};
static unsigned int ng12[] = {503U, 0U};
static unsigned int ng13[] = {1U, 0U};
static unsigned int ng14[] = {507U, 0U};
static unsigned int ng15[] = {2U, 0U};
static unsigned int ng16[] = {509U, 0U};
static unsigned int ng17[] = {3U, 0U};
static unsigned int ng18[] = {759U, 0U};
static unsigned int ng19[] = {4U, 0U};
static unsigned int ng20[] = {763U, 0U};
static unsigned int ng21[] = {5U, 0U};
static unsigned int ng22[] = {765U, 0U};
static unsigned int ng23[] = {6U, 0U};
static unsigned int ng24[] = {887U, 0U};
static unsigned int ng25[] = {891U, 0U};
static unsigned int ng26[] = {8U, 0U};
static unsigned int ng27[] = {893U, 0U};
static unsigned int ng28[] = {9U, 0U};
static unsigned int ng29[] = {894U, 0U};
static unsigned int ng30[] = {10U, 0U};
static unsigned int ng31[] = {989U, 0U};
static unsigned int ng32[] = {957U, 0U};
static unsigned int ng33[] = {12U, 0U};
static unsigned int ng34[] = {955U, 0U};
static unsigned int ng35[] = {951U, 0U};
static unsigned int ng36[] = {510U, 0U};
static unsigned int ng37[] = {15U, 0U};



static void Cont_15_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5584);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 5440);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_17_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 5648);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 5456);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_19_2(char *t0)
{
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(19, ng0);
    t2 = (t0 + 5472);
    *((int *)t2) = 1;
    t3 = (t0 + 4656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(20, ng0);

LAB5:    xsi_set_current_line(21, ng0);
    t4 = (t0 + 2088);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng1)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB17;

LAB14:    if (t20 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t8) = 1;

LAB17:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t8, 0, 8);
    t6 = (t4 + 4);
    t7 = (t5 + 4);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t5);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t7);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t6);
    t19 = *((unsigned int *)t7);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB25;

LAB22:    if (t20 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t8) = 1;

LAB25:    t10 = (t8 + 4);
    t25 = *((unsigned int *)t10);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(36, ng0);

LAB30:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);

LAB28:
LAB20:
LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(22, ng0);

LAB13:    xsi_set_current_line(23, ng0);
    t30 = ((char*)((ng2)));
    t31 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t31, t30, 0, 0, 4, 0LL);
    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB12;

LAB16:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(27, ng0);

LAB21:    xsi_set_current_line(28, ng0);
    t23 = ((char*)((ng4)));
    t24 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t24, t23, 0, 0, 4, 0LL);
    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB20;

LAB24:    t9 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB25;

LAB26:    xsi_set_current_line(32, ng0);

LAB29:    xsi_set_current_line(33, ng0);
    t23 = ((char*)((ng6)));
    t24 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t24, t23, 0, 0, 4, 0LL);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 2, 0LL);
    goto LAB28;

}

static void Always_51_3(char *t0)
{
    char t4[8];
    char t32[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t59;

LAB0:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5488);
    *((int *)t2) = 1;
    t3 = (t0 + 4904);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);

LAB5:    xsi_set_current_line(53, ng0);
    t5 = (t0 + 1928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t4, 10, 10, 2U, t9, 6, t7, 4);
    t8 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t8, t4, 0, 0, 10, 0LL);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t2);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t5);
    t14 = *((unsigned int *)t6);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t5);
    t18 = *((unsigned int *)t6);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB7;

LAB6:    if (t19 != 0)
        goto LAB8;

LAB9:    t8 = (t4 + 4);
    t22 = *((unsigned int *)t8);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB8:    t7 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(55, ng0);

LAB13:    xsi_set_current_line(56, ng0);
    t9 = (t0 + 2888);
    t27 = (t9 + 56U);
    t28 = *((char **)t27);
    t29 = (t0 + 2728);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memset(t32, 0, 8);
    t33 = (t28 + 4);
    t34 = (t31 + 4);
    t35 = *((unsigned int *)t28);
    t36 = *((unsigned int *)t31);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB17;

LAB14:    if (t44 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t32) = 1;

LAB17:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB18;

LAB19:    xsi_set_current_line(67, ng0);

LAB26:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 10, 0LL);

LAB20:    goto LAB12;

LAB16:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB17;

LAB18:    xsi_set_current_line(57, ng0);

LAB21:    xsi_set_current_line(58, ng0);
    t54 = (t0 + 3048);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = ((char*)((ng3)));
    memset(t58, 0, 8);
    xsi_vlog_signed_add(t58, 32, t56, 32, t57, 32);
    t59 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t59, t58, 0, 0, 32, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_equal(t4, 32, t5, 32, t6, 32);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t4);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB22;

LAB23:
LAB24:    goto LAB20;

LAB22:    xsi_set_current_line(60, ng0);

LAB25:    xsi_set_current_line(61, ng0);
    t8 = (t0 + 1208U);
    t9 = *((char **)t8);
    t8 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t8, t9, 0, 0, 6, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 4, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 32, 0LL);
    goto LAB24;

}

static void Always_76_4(char *t0)
{
    char t8[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    int t38;
    char *t39;
    char *t40;

LAB0:    t1 = (t0 + 5120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 5504);
    *((int *)t2) = 1;
    t3 = (t0 + 5152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);

LAB5:    xsi_set_current_line(78, ng0);
    t4 = (t0 + 3208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng3)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB9;

LAB6:    if (t20 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t8) = 1;

LAB9:    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 != 0);
    if (t29 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(79, ng0);

LAB13:    xsi_set_current_line(80, ng0);
    t31 = (t0 + 2568);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t0 + 2408);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    xsi_vlogtype_concat(t30, 10, 10, 2U, t36, 6, t33, 4);

LAB14:    t37 = ((char*)((ng10)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t37, 10);
    if (t38 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng12)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng14)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng16)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng18)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng20)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng22)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng24)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng25)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng27)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng29)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng31)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng32)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng34)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng35)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng36)));
    t38 = xsi_vlog_unsigned_case_compare(t30, 10, t2, 10);
    if (t38 == 1)
        goto LAB45;

LAB46:
LAB48:
LAB47:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB49:    goto LAB12;

LAB15:    xsi_set_current_line(81, ng0);
    t39 = ((char*)((ng11)));
    t40 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t40, t39, 0, 0, 4, 0LL);
    goto LAB49;

LAB17:    xsi_set_current_line(82, ng0);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB19:    xsi_set_current_line(83, ng0);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB21:    xsi_set_current_line(84, ng0);
    t3 = ((char*)((ng17)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB23:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng19)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB25:    xsi_set_current_line(86, ng0);
    t3 = ((char*)((ng21)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB27:    xsi_set_current_line(87, ng0);
    t3 = ((char*)((ng23)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB29:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB31:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng26)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB33:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng28)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB35:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng30)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB37:    xsi_set_current_line(92, ng0);
    t3 = ((char*)((ng6)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB39:    xsi_set_current_line(93, ng0);
    t3 = ((char*)((ng33)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB41:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB43:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

LAB45:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng37)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB49;

}


extern void work_m_00000000002690989539_4101221563_init()
{
	static char *pe[] = {(void *)Cont_15_0,(void *)Cont_17_1,(void *)Always_19_2,(void *)Always_51_3,(void *)Always_76_4};
	xsi_register_didat("work_m_00000000002690989539_4101221563", "isim/tsw_isim_beh.exe.sim/work/m_00000000002690989539_4101221563.didat");
	xsi_register_executes(pe);
}
