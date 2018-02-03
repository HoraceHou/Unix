/*	vmsysent.c	4.10	81/04/13	*/

/*
 * This table is the switch used to transfer
 * to the appropriate routine for processing a vmunix special system call.
 * Each row contains the number of arguments expected
 * and a pointer to the routine.
 */

	1, rmdir,			/* 64 +0 = rmdir */
	2, mkdir,			/* 64 +1 = mkdir */
	0, vfork,			/* 64 +2 = vfork */
	2, getlogname,			/* 64 +3 = getlogname */
	3, nosys,			/* 64 +4 = vwrite; deprecated */
	3, nosys,			/* 64 +5 = was segalloc */
	1, nosys,			/* 64 +6 = was segfree */
	1, nosys,			/* 64 +7 = was segsync */
	1, vadvise,			/* 64 +8 = vadvise */
	3, nosys,			/* 64 +9 = was splice */
	2, setgroups,			/* 64+10 = setgroups */
	2, getgroups,			/* 64+11 = getgroups */
	1, nosys,			/* 64+12 = vhangup; deprecated */
	2, vlimit,			/* 64+13 = vlimit */
	0, nosys,			/* 64+14 = nosys */
	0, nosys,			/* 64+15 = nosys */
	0, nosys,			/* 64+16 = nosys */
	0, nosys,			/* 64+17 = nosys */
	0, nosys,			/* 64+18 = nosys */
	0, nosys,			/* 64+19 = nosys */
	0, nosys,			/* 64+20 = nosys */
	1, vswapon,			/* 64+21 = vswapon */
	0, nosys,			/* 64+22 = nosys */
	0, nosys,			/* 64+23 = nosys */
	0, nosys,			/* 64+24 = nosys */
	0, nosys,			/* 64+25 = nosys */
	0, nosys,			/* 64+26 = nosys */
	0, nosys,			/* 64+27 = nosys */
	0, nosys,			/* 64+28 = nosys */
	0, nosys,			/* 64+29 = nosys */
#ifdef sun
	0, sigcleanup,			/* 64+30 = nosys */
#else
	0, nosys,			/* 64+30 = nosys */
#endif
	0, nosys,			/* 64+31 = nosys */
	0, nosys,			/* 64+32 = nosys */
	0, nosys,			/* 64+33 = nosys */
	0, nosys,			/* 64+34 = nosys */
	0, nosys,			/* 64+35 = nosys */
	0, nosys,			/* 64+36 = nosys */
	0, nosys,			/* 64+37 = nosys */
	0, nosys,			/* 64+38 = nosys */
	0, nosys,			/* 64+39 = nosys */
	0, nosys,			/* 64+40 = nosys */
	1, nap,				/* 64+41 = nap */
	1, settod,			/* 64+42 = settod */
	2, vtimes,			/* 64+43 = vtimes */
	5, smmap,			/* 64+44 = mmap */
	2, munmap,			/* 64+45 = munmap */
	0, getpagesize,			/* 64+46 = getpagesize */
	0, nosys,			/* 64+47 = nosys */
	0, nosys,			/* 64+48 = nosys */
	0, nosys,			/* 64+49 = nosys */
	0, nosys,			/* 64+50 = nosys */
#ifdef TRACE
	2, vtrace,			/* 64+51 = vtrace */
#else
	0, nosys,			/* 64+51 = nosys */
#endif
	0, nosys,			/* 64+52 = nosys */
	0, nosys,			/* 64+53 = nosys */
	0, nosys,			/* 64+54 = nosys */
	1, resuba,			/* 64+55 = resuba */
	0, nosys,			/* 64+56 = nosys */
	0, nosys,			/* 64+57 = nosys */
	0, nosys,			/* 64+58 = nosys */
	5, futz,			/* 64+59 = futz */
	0, nosys,			/* 64+60 = nosys */
	0, nosys,			/* 64+61 = nosys */
	0, nosys,			/* 64+62 = nosys */
	2, limits,			/* 64+63 = limits */