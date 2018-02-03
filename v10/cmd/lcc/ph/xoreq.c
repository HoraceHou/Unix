/* The Plum Hall Validation Suite for C
 * Unpublished copyright (c) 1986-1991, Chiron Systems Inc and Plum Hall Inc.
 * VERSION: 4
 * DATE: 1993-01-01
 * The "ANSI" mode of the Suite corresponds to the official ANSI C, X3.159-1989.
 * As per your license agreement, your distribution is not to be moved or copied outside the Designated Site
 * without specific permission from Plum Hall Inc.
 */

#define ANSI 1  /* This file follows ANSI arithmetic rules, which may not work in non-ANSI modes */
#include "types.h"
int main()
	{
	extern char *Filename;
	typedef union {
		CHAR c;
		SHORT s;
		INT i;
		UCHAR uc;
		USHORT us;
		UINT ui;
		LONG l;
		ULONG ul;
		FLOAT f;
		DOUBLE d;
#if ANSI
		SCHAR sc;
		LDOUBLE ld;
#endif
		} E;
	auto E E1, *pE1 = &E1;
#if ANSI
	auto E E2, *pE2 = &E2;
#endif
	auto E E3, *pE3 = &E3;
	auto E E4, *pE4 = &E4;
	auto E E5, *pE5 = &E5;
	auto E E6, *pE6 = &E6;
	auto E E7, *pE7 = &E7;
	auto E E8, *pE8 = &E8;
	auto E E9, *pE9 = &E9;
	auto E E10, *pE10 = &E10;
	auto E E11, *pE11 = &E11;
#if ANSI
	auto E E12, *pE12 = &E12;
#endif
	pE1->c = 7;
#if ANSI
	pE2->sc = 8;
#endif
	pE3->s = 9;
	pE4->i = 10;
	pE5->uc = 11;
	pE6->us = 12;
	pE7->ui = 13;
	pE8->l = 14;
	pE9->ul = 15;
	pE10->f = 16;
	pE11->d = 17;
#if ANSI
	pE12->ld = 18;
#endif
	{
	auto struct {
		CHAR c;
		SHORT s;
		INT i;
		UCHAR uc;
		USHORT us;
		UINT ui;
		LONG l;
		ULONG ul;
		FLOAT f;
		DOUBLE d;
#if ANSI
		SCHAR sc;
		LDOUBLE ld;
#endif
		} F;
	F.c = 7;
#if ANSI
	F.sc = 8;
#endif
	F.s = 9;
	F.i = 10;
	F.uc = 11;
	F.us = 12;
	F.ui = 13;
	F.l = 14;
	F.ul = 15;
	F.f = 16;
	F.d = 17;
#if ANSI
	F.ld = 18;
#endif
	{
	int true = 1, false = 0;
	Filename =  " auto punion auto struct xoreq ";
	pE1->c = 7; F.c = 7;
	pE1->c ^= F.c;
	iequals(__LINE__, pE1->c, (CHAR)0);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.c, (CHAR)0);
	F.c = 7; pE1->c = 7;
	F.c ^= pE1->c;
	iequals(__LINE__, F.c, (CHAR)0);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE1->c, (CHAR)0);
#if ANSI
	pE1->c = 7; F.sc = 8;
	pE1->c ^= F.sc;
	iequals(__LINE__, pE1->c, (CHAR)15);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.sc, (CHAR)15);
	F.sc = 8; pE1->c = 7;
	F.sc ^= pE1->c;
	iequals(__LINE__, F.sc, (SCHAR)15);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE1->c, (SCHAR)15);
#endif
	pE1->c = 7; F.s = 9;
	pE1->c ^= F.s;
	iequals(__LINE__, pE1->c, (CHAR)14);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.s, (CHAR)14);
	F.s = 9; pE1->c = 7;
	F.s ^= pE1->c;
	iequals(__LINE__, F.s, (SHORT)14);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE1->c, (SHORT)14);
	pE1->c = 7; F.i = 10;
	pE1->c ^= F.i;
	iequals(__LINE__, pE1->c, (CHAR)13);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.i, (CHAR)13);
	F.i = 10; pE1->c = 7;
	F.i ^= pE1->c;
	iequals(__LINE__, F.i, (INT)13);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE1->c, (INT)13);
	pE1->c = 7; F.uc = 11;
	pE1->c ^= F.uc;
	iequals(__LINE__, pE1->c, (CHAR)12);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.uc, (CHAR)12);
	F.uc = 11; pE1->c = 7;
	F.uc ^= pE1->c;
	iequals(__LINE__, F.uc, (UCHAR)12);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE1->c, (UCHAR)12);
	pE1->c = 7; F.us = 12;
	pE1->c ^= F.us;
	iequals(__LINE__, pE1->c, (CHAR)11);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.us, (CHAR)11);
	F.us = 12; pE1->c = 7;
	F.us ^= pE1->c;
	iequals(__LINE__, F.us, (USHORT)11);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE1->c, (USHORT)11);
	pE1->c = 7; F.ui = 13;
	pE1->c ^= F.ui;
	iequals(__LINE__, pE1->c, (CHAR)10);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.ui, (CHAR)10);
	F.ui = 13; pE1->c = 7;
	F.ui ^= pE1->c;
	iequals(__LINE__, F.ui, (UINT)10);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE1->c, (UINT)10);
	pE1->c = 7; F.l = 14;
	pE1->c ^= F.l;
	iequals(__LINE__, pE1->c, (CHAR)9);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.l, (CHAR)9);
	F.l = 14; pE1->c = 7;
	F.l ^= pE1->c;
	lequals(__LINE__, F.l, (LONG)9L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE1->c, (LONG)9L);
	pE1->c = 7; F.ul = 15;
	pE1->c ^= F.ul;
	iequals(__LINE__, pE1->c, (CHAR)8);
	pE1->c = 7;
	iequals(__LINE__, pE1->c ^= F.ul, (CHAR)8);
	F.ul = 15; pE1->c = 7;
	F.ul ^= pE1->c;
	lequals(__LINE__, F.ul, (ULONG)8L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE1->c, (ULONG)8L);
#if ANSI
	pE2->sc = 8; F.c = 7;
	pE2->sc ^= F.c;
	iequals(__LINE__, pE2->sc, (SCHAR)15);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.c, (SCHAR)15);
	F.c = 7; pE2->sc = 8;
	F.c ^= pE2->sc;
	iequals(__LINE__, F.c, (CHAR)15);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE2->sc, (CHAR)15);
#endif
#if ANSI
	pE2->sc = 8; F.sc = 8;
	pE2->sc ^= F.sc;
	iequals(__LINE__, pE2->sc, (SCHAR)0);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.sc, (SCHAR)0);
	F.sc = 8; pE2->sc = 8;
	F.sc ^= pE2->sc;
	iequals(__LINE__, F.sc, (SCHAR)0);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE2->sc, (SCHAR)0);
#endif
#if ANSI
	pE2->sc = 8; F.s = 9;
	pE2->sc ^= F.s;
	iequals(__LINE__, pE2->sc, (SCHAR)1);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.s, (SCHAR)1);
	F.s = 9; pE2->sc = 8;
	F.s ^= pE2->sc;
	iequals(__LINE__, F.s, (SHORT)1);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE2->sc, (SHORT)1);
#endif
#if ANSI
	pE2->sc = 8; F.i = 10;
	pE2->sc ^= F.i;
	iequals(__LINE__, pE2->sc, (SCHAR)2);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.i, (SCHAR)2);
	F.i = 10; pE2->sc = 8;
	F.i ^= pE2->sc;
	iequals(__LINE__, F.i, (INT)2);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE2->sc, (INT)2);
#endif
#if ANSI
	pE2->sc = 8; F.uc = 11;
	pE2->sc ^= F.uc;
	iequals(__LINE__, pE2->sc, (SCHAR)3);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.uc, (SCHAR)3);
	F.uc = 11; pE2->sc = 8;
	F.uc ^= pE2->sc;
	iequals(__LINE__, F.uc, (UCHAR)3);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE2->sc, (UCHAR)3);
#endif
#if ANSI
	pE2->sc = 8; F.us = 12;
	pE2->sc ^= F.us;
	iequals(__LINE__, pE2->sc, (SCHAR)4);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.us, (SCHAR)4);
	F.us = 12; pE2->sc = 8;
	F.us ^= pE2->sc;
	iequals(__LINE__, F.us, (USHORT)4);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE2->sc, (USHORT)4);
#endif
#if ANSI
	pE2->sc = 8; F.ui = 13;
	pE2->sc ^= F.ui;
	iequals(__LINE__, pE2->sc, (SCHAR)5);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.ui, (SCHAR)5);
	F.ui = 13; pE2->sc = 8;
	F.ui ^= pE2->sc;
	iequals(__LINE__, F.ui, (UINT)5);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE2->sc, (UINT)5);
#endif
#if ANSI
	pE2->sc = 8; F.l = 14;
	pE2->sc ^= F.l;
	iequals(__LINE__, pE2->sc, (SCHAR)6);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.l, (SCHAR)6);
	F.l = 14; pE2->sc = 8;
	F.l ^= pE2->sc;
	lequals(__LINE__, F.l, (LONG)6L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE2->sc, (LONG)6L);
#endif
#if ANSI
	pE2->sc = 8; F.ul = 15;
	pE2->sc ^= F.ul;
	iequals(__LINE__, pE2->sc, (SCHAR)7);
	pE2->sc = 8;
	iequals(__LINE__, pE2->sc ^= F.ul, (SCHAR)7);
	F.ul = 15; pE2->sc = 8;
	F.ul ^= pE2->sc;
	lequals(__LINE__, F.ul, (ULONG)7L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE2->sc, (ULONG)7L);
#endif
	pE3->s = 9; F.c = 7;
	pE3->s ^= F.c;
	iequals(__LINE__, pE3->s, (SHORT)14);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.c, (SHORT)14);
	F.c = 7; pE3->s = 9;
	F.c ^= pE3->s;
	iequals(__LINE__, F.c, (CHAR)14);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE3->s, (CHAR)14);
#if ANSI
	pE3->s = 9; F.sc = 8;
	pE3->s ^= F.sc;
	iequals(__LINE__, pE3->s, (SHORT)1);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.sc, (SHORT)1);
	F.sc = 8; pE3->s = 9;
	F.sc ^= pE3->s;
	iequals(__LINE__, F.sc, (SCHAR)1);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE3->s, (SCHAR)1);
#endif
	pE3->s = 9; F.s = 9;
	pE3->s ^= F.s;
	iequals(__LINE__, pE3->s, (SHORT)0);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.s, (SHORT)0);
	F.s = 9; pE3->s = 9;
	F.s ^= pE3->s;
	iequals(__LINE__, F.s, (SHORT)0);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE3->s, (SHORT)0);
	pE3->s = 9; F.i = 10;
	pE3->s ^= F.i;
	iequals(__LINE__, pE3->s, (SHORT)3);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.i, (SHORT)3);
	F.i = 10; pE3->s = 9;
	F.i ^= pE3->s;
	iequals(__LINE__, F.i, (INT)3);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE3->s, (INT)3);
	pE3->s = 9; F.uc = 11;
	pE3->s ^= F.uc;
	iequals(__LINE__, pE3->s, (SHORT)2);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.uc, (SHORT)2);
	F.uc = 11; pE3->s = 9;
	F.uc ^= pE3->s;
	iequals(__LINE__, F.uc, (UCHAR)2);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE3->s, (UCHAR)2);
	pE3->s = 9; F.us = 12;
	pE3->s ^= F.us;
	iequals(__LINE__, pE3->s, (SHORT)5);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.us, (SHORT)5);
	F.us = 12; pE3->s = 9;
	F.us ^= pE3->s;
	iequals(__LINE__, F.us, (USHORT)5);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE3->s, (USHORT)5);
	pE3->s = 9; F.ui = 13;
	pE3->s ^= F.ui;
	iequals(__LINE__, pE3->s, (SHORT)4);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.ui, (SHORT)4);
	F.ui = 13; pE3->s = 9;
	F.ui ^= pE3->s;
	iequals(__LINE__, F.ui, (UINT)4);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE3->s, (UINT)4);
	pE3->s = 9; F.l = 14;
	pE3->s ^= F.l;
	iequals(__LINE__, pE3->s, (SHORT)7);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.l, (SHORT)7);
	F.l = 14; pE3->s = 9;
	F.l ^= pE3->s;
	lequals(__LINE__, F.l, (LONG)7L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE3->s, (LONG)7L);
	pE3->s = 9; F.ul = 15;
	pE3->s ^= F.ul;
	iequals(__LINE__, pE3->s, (SHORT)6);
	pE3->s = 9;
	iequals(__LINE__, pE3->s ^= F.ul, (SHORT)6);
	F.ul = 15; pE3->s = 9;
	F.ul ^= pE3->s;
	lequals(__LINE__, F.ul, (ULONG)6L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE3->s, (ULONG)6L);
	pE4->i = 10; F.c = 7;
	pE4->i ^= F.c;
	iequals(__LINE__, pE4->i, (INT)13);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.c, (INT)13);
	F.c = 7; pE4->i = 10;
	F.c ^= pE4->i;
	iequals(__LINE__, F.c, (CHAR)13);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE4->i, (CHAR)13);
#if ANSI
	pE4->i = 10; F.sc = 8;
	pE4->i ^= F.sc;
	iequals(__LINE__, pE4->i, (INT)2);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.sc, (INT)2);
	F.sc = 8; pE4->i = 10;
	F.sc ^= pE4->i;
	iequals(__LINE__, F.sc, (SCHAR)2);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE4->i, (SCHAR)2);
#endif
	pE4->i = 10; F.s = 9;
	pE4->i ^= F.s;
	iequals(__LINE__, pE4->i, (INT)3);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.s, (INT)3);
	F.s = 9; pE4->i = 10;
	F.s ^= pE4->i;
	iequals(__LINE__, F.s, (SHORT)3);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE4->i, (SHORT)3);
	pE4->i = 10; F.i = 10;
	pE4->i ^= F.i;
	iequals(__LINE__, pE4->i, (INT)0);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.i, (INT)0);
	F.i = 10; pE4->i = 10;
	F.i ^= pE4->i;
	iequals(__LINE__, F.i, (INT)0);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE4->i, (INT)0);
	pE4->i = 10; F.uc = 11;
	pE4->i ^= F.uc;
	iequals(__LINE__, pE4->i, (INT)1);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.uc, (INT)1);
	F.uc = 11; pE4->i = 10;
	F.uc ^= pE4->i;
	iequals(__LINE__, F.uc, (UCHAR)1);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE4->i, (UCHAR)1);
	pE4->i = 10; F.us = 12;
	pE4->i ^= F.us;
	iequals(__LINE__, pE4->i, (INT)6);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.us, (INT)6);
	F.us = 12; pE4->i = 10;
	F.us ^= pE4->i;
	iequals(__LINE__, F.us, (USHORT)6);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE4->i, (USHORT)6);
	pE4->i = 10; F.ui = 13;
	pE4->i ^= F.ui;
	iequals(__LINE__, pE4->i, (INT)7);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.ui, (INT)7);
	F.ui = 13; pE4->i = 10;
	F.ui ^= pE4->i;
	iequals(__LINE__, F.ui, (UINT)7);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE4->i, (UINT)7);
	pE4->i = 10; F.l = 14;
	pE4->i ^= F.l;
	iequals(__LINE__, pE4->i, (INT)4);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.l, (INT)4);
	F.l = 14; pE4->i = 10;
	F.l ^= pE4->i;
	lequals(__LINE__, F.l, (LONG)4L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE4->i, (LONG)4L);
	pE4->i = 10; F.ul = 15;
	pE4->i ^= F.ul;
	iequals(__LINE__, pE4->i, (INT)5);
	pE4->i = 10;
	iequals(__LINE__, pE4->i ^= F.ul, (INT)5);
	F.ul = 15; pE4->i = 10;
	F.ul ^= pE4->i;
	lequals(__LINE__, F.ul, (ULONG)5L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE4->i, (ULONG)5L);
	pE5->uc = 11; F.c = 7;
	pE5->uc ^= F.c;
	iequals(__LINE__, pE5->uc, (UCHAR)12);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.c, (UCHAR)12);
	F.c = 7; pE5->uc = 11;
	F.c ^= pE5->uc;
	iequals(__LINE__, F.c, (CHAR)12);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE5->uc, (CHAR)12);
#if ANSI
	pE5->uc = 11; F.sc = 8;
	pE5->uc ^= F.sc;
	iequals(__LINE__, pE5->uc, (UCHAR)3);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.sc, (UCHAR)3);
	F.sc = 8; pE5->uc = 11;
	F.sc ^= pE5->uc;
	iequals(__LINE__, F.sc, (SCHAR)3);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE5->uc, (SCHAR)3);
#endif
	pE5->uc = 11; F.s = 9;
	pE5->uc ^= F.s;
	iequals(__LINE__, pE5->uc, (UCHAR)2);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.s, (UCHAR)2);
	F.s = 9; pE5->uc = 11;
	F.s ^= pE5->uc;
	iequals(__LINE__, F.s, (SHORT)2);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE5->uc, (SHORT)2);
	pE5->uc = 11; F.i = 10;
	pE5->uc ^= F.i;
	iequals(__LINE__, pE5->uc, (UCHAR)1);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.i, (UCHAR)1);
	F.i = 10; pE5->uc = 11;
	F.i ^= pE5->uc;
	iequals(__LINE__, F.i, (INT)1);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE5->uc, (INT)1);
	pE5->uc = 11; F.uc = 11;
	pE5->uc ^= F.uc;
	iequals(__LINE__, pE5->uc, (UCHAR)0);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.uc, (UCHAR)0);
	F.uc = 11; pE5->uc = 11;
	F.uc ^= pE5->uc;
	iequals(__LINE__, F.uc, (UCHAR)0);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE5->uc, (UCHAR)0);
	pE5->uc = 11; F.us = 12;
	pE5->uc ^= F.us;
	iequals(__LINE__, pE5->uc, (UCHAR)7);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.us, (UCHAR)7);
	F.us = 12; pE5->uc = 11;
	F.us ^= pE5->uc;
	iequals(__LINE__, F.us, (USHORT)7);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE5->uc, (USHORT)7);
	pE5->uc = 11; F.ui = 13;
	pE5->uc ^= F.ui;
	iequals(__LINE__, pE5->uc, (UCHAR)6);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.ui, (UCHAR)6);
	F.ui = 13; pE5->uc = 11;
	F.ui ^= pE5->uc;
	iequals(__LINE__, F.ui, (UINT)6);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE5->uc, (UINT)6);
	pE5->uc = 11; F.l = 14;
	pE5->uc ^= F.l;
	iequals(__LINE__, pE5->uc, (UCHAR)5);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.l, (UCHAR)5);
	F.l = 14; pE5->uc = 11;
	F.l ^= pE5->uc;
	lequals(__LINE__, F.l, (LONG)5L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE5->uc, (LONG)5L);
	pE5->uc = 11; F.ul = 15;
	pE5->uc ^= F.ul;
	iequals(__LINE__, pE5->uc, (UCHAR)4);
	pE5->uc = 11;
	iequals(__LINE__, pE5->uc ^= F.ul, (UCHAR)4);
	F.ul = 15; pE5->uc = 11;
	F.ul ^= pE5->uc;
	lequals(__LINE__, F.ul, (ULONG)4L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE5->uc, (ULONG)4L);
	pE6->us = 12; F.c = 7;
	pE6->us ^= F.c;
	iequals(__LINE__, pE6->us, (USHORT)11);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.c, (USHORT)11);
	F.c = 7; pE6->us = 12;
	F.c ^= pE6->us;
	iequals(__LINE__, F.c, (CHAR)11);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE6->us, (CHAR)11);
#if ANSI
	pE6->us = 12; F.sc = 8;
	pE6->us ^= F.sc;
	iequals(__LINE__, pE6->us, (USHORT)4);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.sc, (USHORT)4);
	F.sc = 8; pE6->us = 12;
	F.sc ^= pE6->us;
	iequals(__LINE__, F.sc, (SCHAR)4);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE6->us, (SCHAR)4);
#endif
	pE6->us = 12; F.s = 9;
	pE6->us ^= F.s;
	iequals(__LINE__, pE6->us, (USHORT)5);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.s, (USHORT)5);
	F.s = 9; pE6->us = 12;
	F.s ^= pE6->us;
	iequals(__LINE__, F.s, (SHORT)5);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE6->us, (SHORT)5);
	pE6->us = 12; F.i = 10;
	pE6->us ^= F.i;
	iequals(__LINE__, pE6->us, (USHORT)6);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.i, (USHORT)6);
	F.i = 10; pE6->us = 12;
	F.i ^= pE6->us;
	iequals(__LINE__, F.i, (INT)6);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE6->us, (INT)6);
	pE6->us = 12; F.uc = 11;
	pE6->us ^= F.uc;
	iequals(__LINE__, pE6->us, (USHORT)7);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.uc, (USHORT)7);
	F.uc = 11; pE6->us = 12;
	F.uc ^= pE6->us;
	iequals(__LINE__, F.uc, (UCHAR)7);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE6->us, (UCHAR)7);
	pE6->us = 12; F.us = 12;
	pE6->us ^= F.us;
	iequals(__LINE__, pE6->us, (USHORT)0);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.us, (USHORT)0);
	F.us = 12; pE6->us = 12;
	F.us ^= pE6->us;
	iequals(__LINE__, F.us, (USHORT)0);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE6->us, (USHORT)0);
	pE6->us = 12; F.ui = 13;
	pE6->us ^= F.ui;
	iequals(__LINE__, pE6->us, (USHORT)1);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.ui, (USHORT)1);
	F.ui = 13; pE6->us = 12;
	F.ui ^= pE6->us;
	iequals(__LINE__, F.ui, (UINT)1);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE6->us, (UINT)1);
	pE6->us = 12; F.l = 14;
	pE6->us ^= F.l;
	iequals(__LINE__, pE6->us, (USHORT)2);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.l, (USHORT)2);
	F.l = 14; pE6->us = 12;
	F.l ^= pE6->us;
	lequals(__LINE__, F.l, (LONG)2L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE6->us, (LONG)2L);
	pE6->us = 12; F.ul = 15;
	pE6->us ^= F.ul;
	iequals(__LINE__, pE6->us, (USHORT)3);
	pE6->us = 12;
	iequals(__LINE__, pE6->us ^= F.ul, (USHORT)3);
	F.ul = 15; pE6->us = 12;
	F.ul ^= pE6->us;
	lequals(__LINE__, F.ul, (ULONG)3L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE6->us, (ULONG)3L);
	pE7->ui = 13; F.c = 7;
	pE7->ui ^= F.c;
	iequals(__LINE__, pE7->ui, (UINT)10);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.c, (UINT)10);
	F.c = 7; pE7->ui = 13;
	F.c ^= pE7->ui;
	iequals(__LINE__, F.c, (CHAR)10);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE7->ui, (CHAR)10);
#if ANSI
	pE7->ui = 13; F.sc = 8;
	pE7->ui ^= F.sc;
	iequals(__LINE__, pE7->ui, (UINT)5);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.sc, (UINT)5);
	F.sc = 8; pE7->ui = 13;
	F.sc ^= pE7->ui;
	iequals(__LINE__, F.sc, (SCHAR)5);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE7->ui, (SCHAR)5);
#endif
	pE7->ui = 13; F.s = 9;
	pE7->ui ^= F.s;
	iequals(__LINE__, pE7->ui, (UINT)4);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.s, (UINT)4);
	F.s = 9; pE7->ui = 13;
	F.s ^= pE7->ui;
	iequals(__LINE__, F.s, (SHORT)4);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE7->ui, (SHORT)4);
	pE7->ui = 13; F.i = 10;
	pE7->ui ^= F.i;
	iequals(__LINE__, pE7->ui, (UINT)7);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.i, (UINT)7);
	F.i = 10; pE7->ui = 13;
	F.i ^= pE7->ui;
	iequals(__LINE__, F.i, (INT)7);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE7->ui, (INT)7);
	pE7->ui = 13; F.uc = 11;
	pE7->ui ^= F.uc;
	iequals(__LINE__, pE7->ui, (UINT)6);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.uc, (UINT)6);
	F.uc = 11; pE7->ui = 13;
	F.uc ^= pE7->ui;
	iequals(__LINE__, F.uc, (UCHAR)6);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE7->ui, (UCHAR)6);
	pE7->ui = 13; F.us = 12;
	pE7->ui ^= F.us;
	iequals(__LINE__, pE7->ui, (UINT)1);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.us, (UINT)1);
	F.us = 12; pE7->ui = 13;
	F.us ^= pE7->ui;
	iequals(__LINE__, F.us, (USHORT)1);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE7->ui, (USHORT)1);
	pE7->ui = 13; F.ui = 13;
	pE7->ui ^= F.ui;
	iequals(__LINE__, pE7->ui, (UINT)0);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.ui, (UINT)0);
	F.ui = 13; pE7->ui = 13;
	F.ui ^= pE7->ui;
	iequals(__LINE__, F.ui, (UINT)0);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE7->ui, (UINT)0);
	pE7->ui = 13; F.l = 14;
	pE7->ui ^= F.l;
	iequals(__LINE__, pE7->ui, (UINT)3);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.l, (UINT)3);
	F.l = 14; pE7->ui = 13;
	F.l ^= pE7->ui;
	lequals(__LINE__, F.l, (LONG)3L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE7->ui, (LONG)3L);
	pE7->ui = 13; F.ul = 15;
	pE7->ui ^= F.ul;
	iequals(__LINE__, pE7->ui, (UINT)2);
	pE7->ui = 13;
	iequals(__LINE__, pE7->ui ^= F.ul, (UINT)2);
	F.ul = 15; pE7->ui = 13;
	F.ul ^= pE7->ui;
	lequals(__LINE__, F.ul, (ULONG)2L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE7->ui, (ULONG)2L);
	pE8->l = 14; F.c = 7;
	pE8->l ^= F.c;
	lequals(__LINE__, pE8->l, (LONG)9L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.c, (LONG)9L);
	F.c = 7; pE8->l = 14;
	F.c ^= pE8->l;
	iequals(__LINE__, F.c, (CHAR)9);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE8->l, (CHAR)9);
#if ANSI
	pE8->l = 14; F.sc = 8;
	pE8->l ^= F.sc;
	lequals(__LINE__, pE8->l, (LONG)6L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.sc, (LONG)6L);
	F.sc = 8; pE8->l = 14;
	F.sc ^= pE8->l;
	iequals(__LINE__, F.sc, (SCHAR)6);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE8->l, (SCHAR)6);
#endif
	pE8->l = 14; F.s = 9;
	pE8->l ^= F.s;
	lequals(__LINE__, pE8->l, (LONG)7L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.s, (LONG)7L);
	F.s = 9; pE8->l = 14;
	F.s ^= pE8->l;
	iequals(__LINE__, F.s, (SHORT)7);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE8->l, (SHORT)7);
	pE8->l = 14; F.i = 10;
	pE8->l ^= F.i;
	lequals(__LINE__, pE8->l, (LONG)4L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.i, (LONG)4L);
	F.i = 10; pE8->l = 14;
	F.i ^= pE8->l;
	iequals(__LINE__, F.i, (INT)4);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE8->l, (INT)4);
	pE8->l = 14; F.uc = 11;
	pE8->l ^= F.uc;
	lequals(__LINE__, pE8->l, (LONG)5L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.uc, (LONG)5L);
	F.uc = 11; pE8->l = 14;
	F.uc ^= pE8->l;
	iequals(__LINE__, F.uc, (UCHAR)5);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE8->l, (UCHAR)5);
	pE8->l = 14; F.us = 12;
	pE8->l ^= F.us;
	lequals(__LINE__, pE8->l, (LONG)2L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.us, (LONG)2L);
	F.us = 12; pE8->l = 14;
	F.us ^= pE8->l;
	iequals(__LINE__, F.us, (USHORT)2);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE8->l, (USHORT)2);
	pE8->l = 14; F.ui = 13;
	pE8->l ^= F.ui;
	lequals(__LINE__, pE8->l, (LONG)3L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.ui, (LONG)3L);
	F.ui = 13; pE8->l = 14;
	F.ui ^= pE8->l;
	iequals(__LINE__, F.ui, (UINT)3);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE8->l, (UINT)3);
	pE8->l = 14; F.l = 14;
	pE8->l ^= F.l;
	lequals(__LINE__, pE8->l, (LONG)0L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.l, (LONG)0L);
	F.l = 14; pE8->l = 14;
	F.l ^= pE8->l;
	lequals(__LINE__, F.l, (LONG)0L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE8->l, (LONG)0L);
	pE8->l = 14; F.ul = 15;
	pE8->l ^= F.ul;
	lequals(__LINE__, pE8->l, (LONG)1L);
	pE8->l = 14;
	lequals(__LINE__, pE8->l ^= F.ul, (LONG)1L);
	F.ul = 15; pE8->l = 14;
	F.ul ^= pE8->l;
	lequals(__LINE__, F.ul, (ULONG)1L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE8->l, (ULONG)1L);
	pE9->ul = 15; F.c = 7;
	pE9->ul ^= F.c;
	lequals(__LINE__, pE9->ul, (ULONG)8L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.c, (ULONG)8L);
	F.c = 7; pE9->ul = 15;
	F.c ^= pE9->ul;
	iequals(__LINE__, F.c, (CHAR)8);
	F.c = 7;
	iequals(__LINE__, F.c ^= pE9->ul, (CHAR)8);
#if ANSI
	pE9->ul = 15; F.sc = 8;
	pE9->ul ^= F.sc;
	lequals(__LINE__, pE9->ul, (ULONG)7L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.sc, (ULONG)7L);
	F.sc = 8; pE9->ul = 15;
	F.sc ^= pE9->ul;
	iequals(__LINE__, F.sc, (SCHAR)7);
	F.sc = 8;
	iequals(__LINE__, F.sc ^= pE9->ul, (SCHAR)7);
#endif
	pE9->ul = 15; F.s = 9;
	pE9->ul ^= F.s;
	lequals(__LINE__, pE9->ul, (ULONG)6L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.s, (ULONG)6L);
	F.s = 9; pE9->ul = 15;
	F.s ^= pE9->ul;
	iequals(__LINE__, F.s, (SHORT)6);
	F.s = 9;
	iequals(__LINE__, F.s ^= pE9->ul, (SHORT)6);
	pE9->ul = 15; F.i = 10;
	pE9->ul ^= F.i;
	lequals(__LINE__, pE9->ul, (ULONG)5L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.i, (ULONG)5L);
	F.i = 10; pE9->ul = 15;
	F.i ^= pE9->ul;
	iequals(__LINE__, F.i, (INT)5);
	F.i = 10;
	iequals(__LINE__, F.i ^= pE9->ul, (INT)5);
	pE9->ul = 15; F.uc = 11;
	pE9->ul ^= F.uc;
	lequals(__LINE__, pE9->ul, (ULONG)4L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.uc, (ULONG)4L);
	F.uc = 11; pE9->ul = 15;
	F.uc ^= pE9->ul;
	iequals(__LINE__, F.uc, (UCHAR)4);
	F.uc = 11;
	iequals(__LINE__, F.uc ^= pE9->ul, (UCHAR)4);
	pE9->ul = 15; F.us = 12;
	pE9->ul ^= F.us;
	lequals(__LINE__, pE9->ul, (ULONG)3L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.us, (ULONG)3L);
	F.us = 12; pE9->ul = 15;
	F.us ^= pE9->ul;
	iequals(__LINE__, F.us, (USHORT)3);
	F.us = 12;
	iequals(__LINE__, F.us ^= pE9->ul, (USHORT)3);
	pE9->ul = 15; F.ui = 13;
	pE9->ul ^= F.ui;
	lequals(__LINE__, pE9->ul, (ULONG)2L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.ui, (ULONG)2L);
	F.ui = 13; pE9->ul = 15;
	F.ui ^= pE9->ul;
	iequals(__LINE__, F.ui, (UINT)2);
	F.ui = 13;
	iequals(__LINE__, F.ui ^= pE9->ul, (UINT)2);
	pE9->ul = 15; F.l = 14;
	pE9->ul ^= F.l;
	lequals(__LINE__, pE9->ul, (ULONG)1L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.l, (ULONG)1L);
	F.l = 14; pE9->ul = 15;
	F.l ^= pE9->ul;
	lequals(__LINE__, F.l, (LONG)1L);
	F.l = 14;
	lequals(__LINE__, F.l ^= pE9->ul, (LONG)1L);
	pE9->ul = 15; F.ul = 15;
	pE9->ul ^= F.ul;
	lequals(__LINE__, pE9->ul, (ULONG)0L);
	pE9->ul = 15;
	lequals(__LINE__, pE9->ul ^= F.ul, (ULONG)0L);
	F.ul = 15; pE9->ul = 15;
	F.ul ^= pE9->ul;
	lequals(__LINE__, F.ul, (ULONG)0L);
	F.ul = 15;
	lequals(__LINE__, F.ul ^= pE9->ul, (ULONG)0L);
	}}
	return 	report(Filename);
	}