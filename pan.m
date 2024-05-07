#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM p7 */
	case 3: // STATE 1 - _spin_nvr.tmp:51 - [((!(!((isDoorOpen==1)))&&!((isDoorOpen==0))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][1] = 1;
		if (!(( !( !((((int)now.isDoorOpen)==1)))&& !((((int)now.isDoorOpen)==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:56 - [(!((isDoorOpen==0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][8] = 1;
		if (!( !((((int)now.isDoorOpen)==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:58 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[8][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p6 */
	case 6: // STATE 1 - _spin_nvr.tmp:42 - [(!((!((cur_dir!=0))||(isDoorOpen==0))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(( !((now.cur_dir!=0))||(((int)now.isDoorOpen)==0)))))
			continue;
		/* merge: assert(!(!((!((cur_dir!=0))||(isDoorOpen==0)))))(0, 2, 6) */
		reached[7][2] = 1;
		spin_assert( !( !(( !((now.cur_dir!=0))||(((int)now.isDoorOpen)==0)))), " !( !(( !((cur_dir!=0))||(isDoorOpen==0))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[7][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 7: // STATE 10 - _spin_nvr.tmp:47 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p5 */
	case 8: // STATE 1 - _spin_nvr.tmp:31 - [((!(!(req_floor))&&!(((req_floor==cur_floor)&&(isDoorOpen==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!(( !( !(now.req_floor))&& !(((now.req_floor==now.cur_floor)&&(((int)now.isDoorOpen)==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - _spin_nvr.tmp:36 - [((!(!(req_floor))&&!(((req_floor==cur_floor)&&(isDoorOpen==1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][8] = 1;
		if (!(( !( !(now.req_floor))&& !(((now.req_floor==now.cur_floor)&&(((int)now.isDoorOpen)==1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 13 - _spin_nvr.tmp:38 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p4 */
	case 11: // STATE 1 - _spin_nvr.tmp:20 - [((!(!(((req_floor-cur_floor)<0)))&&!((cur_dir==-(1)))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !( !(((now.req_floor-now.cur_floor)<0)))&& !((now.cur_dir== -(1))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 6 - _spin_nvr.tmp:25 - [(!((cur_dir==-(1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][6] = 1;
		if (!( !((now.cur_dir== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - _spin_nvr.tmp:27 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p2 */
	case 14: // STATE 1 - _spin_nvr.tmp:10 - [(!((!((isDoorOpen==1))||(cur_dir==0))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !(( !((((int)now.isDoorOpen)==1))||(now.cur_dir==0)))))
			continue;
		/* merge: assert(!(!((!((isDoorOpen==1))||(cur_dir==0)))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !(( !((((int)now.isDoorOpen)==1))||(now.cur_dir==0)))), " !( !(( !((isDoorOpen==1))||(cur_dir==0))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 15: // STATE 10 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM p1 */
	case 16: // STATE 1 - _spin_nvr.tmp:4 - [(!((isDoorOpen==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !((((int)now.isDoorOpen)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 18: // STATE 1 - Elevator3.pml:252 - [(run Elevator())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - Elevator3.pml:253 - [assert(((cur_floor<=10)&&(cur_floor>=0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		spin_assert(((now.cur_floor<=10)&&(now.cur_floor>=0)), "((cur_floor<=10)&&(cur_floor>=0))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - Elevator3.pml:255 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Elevator */
	case 21: // STATE 1 - Elevator3.pml:144 - [((cur_time>=20))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((now.cur_time>=20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 3 - Elevator3.pml:145 - [((cur_time<20))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((now.cur_time<20)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 4 - Elevator3.pml:146 - [(run Input(cur_time))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!(addproc(II, 1, 0, now.cur_time)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 5 - Elevator3.pml:20 - [((front!=rear))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		if (!((now.front!=now.rear)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 6 - Elevator3.pml:21 - [isempty = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = now.isempty;
		now.isempty = 0;
#ifdef VAR_RANGES
		logval("isempty", now.isempty);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 8 - Elevator3.pml:23 - [isempty = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = now.isempty;
		now.isempty = 1;
#ifdef VAR_RANGES
		logval("isempty", now.isempty);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 12 - Elevator3.pml:149 - [(((isempty==1)&&(cur_dir==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((now.isempty==1)&&(now.cur_dir==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 13 - Elevator3.pml:150 - [isDoorOpen = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 1;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 14 - Elevator3.pml:151 - [cur_time = (cur_time+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = now.cur_time;
		now.cur_time = (now.cur_time+1);
#ifdef VAR_RANGES
		logval("cur_time", now.cur_time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 15 - Elevator3.pml:153 - [(((isempty==0)&&(cur_dir==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][15] = 1;
		if (!(((now.isempty==0)&&(now.cur_dir==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 16 - Elevator3.pml:20 - [((front!=rear))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((now.front!=now.rear)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 17 - Elevator3.pml:21 - [isempty = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = now.isempty;
		now.isempty = 0;
#ifdef VAR_RANGES
		logval("isempty", now.isempty);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 19 - Elevator3.pml:23 - [isempty = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][19] = 1;
		(trpt+1)->bup.oval = now.isempty;
		now.isempty = 1;
#ifdef VAR_RANGES
		logval("isempty", now.isempty);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 23 - Elevator3.pml:40 - [((isempty==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((now.isempty==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 24 - Elevator3.pml:41 - [y = queue[front]] (0:0:1 - 1)
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.y;
		now.y = now.queue[ Index(now.front, 100) ];
#ifdef VAR_RANGES
		logval("y", now.y);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 25 - Elevator3.pml:42 - [front = (front+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = now.front;
		now.front = (now.front+1);
#ifdef VAR_RANGES
		logval("front", now.front);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 27 - Elevator3.pml:45 - [y = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		(trpt+1)->bup.oval = now.y;
		now.y =  -(1);
#ifdef VAR_RANGES
		logval("y", now.y);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 31 - Elevator3.pml:155 - [req_floor = y] (0:0:1 - 3)
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = now.req_floor;
		now.req_floor = now.y;
#ifdef VAR_RANGES
		logval("req_floor", now.req_floor);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 32 - Elevator3.pml:157 - [((req_floor>cur_floor))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		if (!((now.req_floor>now.cur_floor)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 33 - Elevator3.pml:158 - [isDoorOpen = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 0;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 34 - Elevator3.pml:159 - [cur_dir = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][34] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 1;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 35 - Elevator3.pml:160 - [printf('Going up..\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][35] = 1;
		Printf("Going up..\n");
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 37 - Elevator3.pml:164 - [printf('Elevator is currently at floor: %d and Time: %d\\n',cur_floor,cur_time)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		Printf("Elevator is currently at floor: %d and Time: %d\n", now.cur_floor, now.cur_time);
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 38 - Elevator3.pml:166 - [((max_up<cur_floor))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][38] = 1;
		if (!((now.max_up<now.cur_floor)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 40 - Elevator3.pml:168 - [((max_up>=cur_floor))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((now.max_up>=now.cur_floor)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 41 - Elevator3.pml:170 - [((up_stop[cur_floor]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((int)now.up_stop[ Index(now.cur_floor, 11) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 47: // STATE 42 - Elevator3.pml:171 - [cur_dir = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 0;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 43 - Elevator3.pml:172 - [isDoorOpen = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 1;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 44 - Elevator3.pml:173 - [printf('Door Opened at floor: %d\\n',cur_floor)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][44] = 1;
		Printf("Door Opened at floor: %d\n", now.cur_floor);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 45 - Elevator3.pml:174 - [up_stop[cur_floor] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = ((int)now.up_stop[ Index(now.cur_floor, 11) ]);
		now.up_stop[ Index(now.cur_floor, 11) ] = 0;
#ifdef VAR_RANGES
		logval("up_stop[cur_floor]", ((int)now.up_stop[ Index(now.cur_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 46 - Elevator3.pml:175 - [isDoorOpen = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][46] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 0;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 47 - Elevator3.pml:176 - [printf('Door closed at floor: %d\\n',cur_floor)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][47] = 1;
		Printf("Door closed at floor: %d\n", now.cur_floor);
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 48 - Elevator3.pml:177 - [cur_dir = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 1;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 55 - Elevator3.pml:184 - [((cur_floor==max_up))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][55] = 1;
		if (!((now.cur_floor==now.max_up)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 56 - Elevator3.pml:185 - [max_up = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][56] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = 0;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 57 - Elevator3.pml:186 - [cur_dir = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][57] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 0;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 58 - Elevator3.pml:187 - [isDoorOpen = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 1;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 58: // STATE 60 - Elevator3.pml:189 - [cur_floor = (cur_floor+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		(trpt+1)->bup.oval = now.cur_floor;
		now.cur_floor = (now.cur_floor+1);
#ifdef VAR_RANGES
		logval("cur_floor", now.cur_floor);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 59: // STATE 63 - Elevator3.pml:197 - [cur_time = (cur_time+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][63] = 1;
		(trpt+1)->bup.oval = now.cur_time;
		now.cur_time = (now.cur_time+1);
#ifdef VAR_RANGES
		logval("cur_time", now.cur_time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 64 - Elevator3.pml:198 - [(run Input(cur_time))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		if (!(addproc(II, 1, 0, now.cur_time)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 61: // STATE 69 - Elevator3.pml:201 - [isDoorOpen = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][69] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 0;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 62: // STATE 70 - Elevator3.pml:202 - [cur_dir = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir =  -(1);
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 63: // STATE 71 - Elevator3.pml:203 - [printf('Going down..\\n')] (0:0:0 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		Printf("Going down..\n");
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 73 - Elevator3.pml:207 - [printf('Elevator is currently at floor: %d and Time: %d\\n',cur_floor,cur_time)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][73] = 1;
		Printf("Elevator is currently at floor: %d and Time: %d\n", now.cur_floor, now.cur_time);
		_m = 3; goto P999; /* 0 */
	case 65: // STATE 74 - Elevator3.pml:209 - [((min_down>cur_floor))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][74] = 1;
		if (!((now.min_down>now.cur_floor)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 66: // STATE 76 - Elevator3.pml:211 - [((min_down<=cur_floor))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][76] = 1;
		if (!((now.min_down<=now.cur_floor)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 67: // STATE 77 - Elevator3.pml:213 - [((down_stop[cur_floor]==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][77] = 1;
		if (!((((int)now.down_stop[ Index(now.cur_floor, 11) ])==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 68: // STATE 78 - Elevator3.pml:214 - [cur_dir = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][78] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 0;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 69: // STATE 79 - Elevator3.pml:215 - [isDoorOpen = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 1;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 70: // STATE 80 - Elevator3.pml:216 - [printf('Door Opened at floor: %d\\n',cur_floor)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		Printf("Door Opened at floor: %d\n", now.cur_floor);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 81 - Elevator3.pml:217 - [down_stop[cur_floor] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][81] = 1;
		(trpt+1)->bup.oval = ((int)now.down_stop[ Index(now.cur_floor, 11) ]);
		now.down_stop[ Index(now.cur_floor, 11) ] = 0;
#ifdef VAR_RANGES
		logval("down_stop[cur_floor]", ((int)now.down_stop[ Index(now.cur_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 72: // STATE 82 - Elevator3.pml:218 - [isDoorOpen = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][82] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 0;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 73: // STATE 83 - Elevator3.pml:219 - [printf('Door closed at floor: %d\\n',cur_floor)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][83] = 1;
		Printf("Door closed at floor: %d\n", now.cur_floor);
		_m = 3; goto P999; /* 0 */
	case 74: // STATE 84 - Elevator3.pml:220 - [cur_dir = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][84] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir =  -(1);
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 91 - Elevator3.pml:227 - [((cur_floor==min_down))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][91] = 1;
		if (!((now.cur_floor==now.min_down)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 76: // STATE 92 - Elevator3.pml:228 - [min_down = 10] (0:0:1 - 1)
		IfNotBlocked
		reached[1][92] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = 10;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 77: // STATE 93 - Elevator3.pml:229 - [cur_dir = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][93] = 1;
		(trpt+1)->bup.oval = now.cur_dir;
		now.cur_dir = 0;
#ifdef VAR_RANGES
		logval("cur_dir", now.cur_dir);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 78: // STATE 94 - Elevator3.pml:230 - [isDoorOpen = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][94] = 1;
		(trpt+1)->bup.oval = ((int)now.isDoorOpen);
		now.isDoorOpen = 1;
#ifdef VAR_RANGES
		logval("isDoorOpen", ((int)now.isDoorOpen));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 79: // STATE 96 - Elevator3.pml:232 - [cur_floor = (cur_floor-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][96] = 1;
		(trpt+1)->bup.oval = now.cur_floor;
		now.cur_floor = (now.cur_floor-1);
#ifdef VAR_RANGES
		logval("cur_floor", now.cur_floor);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 80: // STATE 99 - Elevator3.pml:240 - [cur_time = (cur_time+1)] (0:0:1 - 3)
		IfNotBlocked
		reached[1][99] = 1;
		(trpt+1)->bup.oval = now.cur_time;
		now.cur_time = (now.cur_time+1);
#ifdef VAR_RANGES
		logval("cur_time", now.cur_time);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 81: // STATE 100 - Elevator3.pml:241 - [(run Input(cur_time))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][100] = 1;
		if (!(addproc(II, 1, 0, now.cur_time)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 82: // STATE 111 - Elevator3.pml:246 - [printf('LoopExited\\n')] (0:112:0 - 3)
		IfNotBlocked
		reached[1][111] = 1;
		Printf("LoopExited\n");
		_m = 3; goto P999; /* 0 */
	case 83: // STATE 112 - Elevator3.pml:247 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][112] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Input */
	case 84: // STATE 1 - Elevator3.pml:77 - [((cur_time_input<20))] (108:0:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((P0 *)_this)->cur_time_input<20)))
			continue;
		/* merge: req_floor = request[cur_time_input](108, 2, 108) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
		((P0 *)_this)->_2_1_req_floor = ((int)now.request[ Index(((P0 *)_this)->cur_time_input, 21) ]);
#ifdef VAR_RANGES
		logval("Input:req_floor", ((P0 *)_this)->_2_1_req_floor);
#endif
		;
		/* merge: request[cur_time_input] = 11(108, 3, 108) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.request[ Index(((P0 *)_this)->cur_time_input, 21) ]);
		now.request[ Index(((P0 *)_this)->cur_time_input, 21) ] = 11;
#ifdef VAR_RANGES
		logval("request[Input:cur_time_input]", ((int)now.request[ Index(((P0 *)_this)->cur_time_input, 21) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 85: // STATE 4 - Elevator3.pml:81 - [((req_floor!=11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((P0 *)_this)->_2_1_req_floor!=11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 86: // STATE 5 - Elevator3.pml:83 - [((cur_dir==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((now.cur_dir==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 87: // STATE 6 - Elevator3.pml:85 - [(((req_floor-cur_floor)>0))] (14:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!(((((P0 *)_this)->_2_1_req_floor-now.cur_floor)>0)))
			continue;
		/* merge: up_stop[req_floor] = 1(0, 7, 14) */
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("up_stop[Input:req_floor]", ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 88: // STATE 8 - Elevator3.pml:54 - [((max_up>req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!((now.max_up>((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: max_up = max_up(113, 9, 113) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[1] = now.max_up;
		now.max_up = now.max_up;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 13, 113) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 89: // STATE 11 - Elevator3.pml:87 - [max_up = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 13, 113) */
		reached[0][13] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 90: // STATE 16 - Elevator3.pml:90 - [(down)] (24:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!(((int)now.down)))
			continue;
		/* merge: down_stop[req_floor] = 1(0, 17, 24) */
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("down_stop[Input:req_floor]", ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 91: // STATE 18 - Elevator3.pml:63 - [((min_down<req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.min_down<((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: min_down = min_down(113, 19, 113) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals[1] = now.min_down;
		now.min_down = now.min_down;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 23, 113) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(113, 39, 113) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 92: // STATE 21 - Elevator3.pml:92 - [min_down = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 23, 113) */
		reached[0][23] = 1;
		;
		/* merge: .(goto)(113, 39, 113) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 93: // STATE 26 - Elevator3.pml:94 - [down = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.down);
		now.down = 1;
#ifdef VAR_RANGES
		logval("down", ((int)now.down));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 94: // STATE 27 - Elevator3.pml:31 - [queue[rear] = req_floor] (0:37:3 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.queue[ Index(now.rear, 100) ];
		now.queue[ Index(now.rear, 100) ] = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("queue[rear]", now.queue[ Index(now.rear, 100) ]);
#endif
		;
		/* merge: rear = (rear+1)(37, 28, 37) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = now.rear;
		now.rear = (now.rear+1);
#ifdef VAR_RANGES
		logval("rear", now.rear);
#endif
		;
		/* merge: down_stop[req_floor] = 1(37, 30, 37) */
		reached[0][30] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("down_stop[Input:req_floor]", ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 95: // STATE 31 - Elevator3.pml:63 - [((min_down<req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (!((now.min_down<((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: min_down = min_down(113, 32, 113) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[1] = now.min_down;
		now.min_down = now.min_down;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 36, 113) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(113, 39, 113) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 96: // STATE 34 - Elevator3.pml:97 - [min_down = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][34] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 36, 113) */
		reached[0][36] = 1;
		;
		/* merge: .(goto)(113, 39, 113) */
		reached[0][39] = 1;
		;
		/* merge: .(goto)(113, 41, 113) */
		reached[0][41] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 97: // STATE 42 - Elevator3.pml:101 - [((cur_dir==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (!((now.cur_dir== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 98: // STATE 43 - Elevator3.pml:103 - [(((req_floor-cur_floor)<0))] (51:0:1 - 1)
		IfNotBlocked
		reached[0][43] = 1;
		if (!(((((P0 *)_this)->_2_1_req_floor-now.cur_floor)<0)))
			continue;
		/* merge: down_stop[req_floor] = 1(0, 44, 51) */
		reached[0][44] = 1;
		(trpt+1)->bup.oval = ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("down_stop[Input:req_floor]", ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 99: // STATE 45 - Elevator3.pml:63 - [((min_down<req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.min_down<((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: min_down = min_down(113, 46, 113) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[1] = now.min_down;
		now.min_down = now.min_down;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 50, 113) */
		reached[0][50] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 100: // STATE 48 - Elevator3.pml:105 - [min_down = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(113, 50, 113) */
		reached[0][50] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 101: // STATE 53 - Elevator3.pml:108 - [(up)] (61:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(((int)now.up)))
			continue;
		/* merge: up_stop[req_floor] = 1(0, 54, 61) */
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("up_stop[Input:req_floor]", ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 102: // STATE 55 - Elevator3.pml:54 - [((max_up>req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((now.max_up>((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: max_up = max_up(113, 56, 113) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[1] = now.max_up;
		now.max_up = now.max_up;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 60, 113) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(113, 76, 113) */
		reached[0][76] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 103: // STATE 58 - Elevator3.pml:110 - [max_up = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 60, 113) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(113, 76, 113) */
		reached[0][76] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 104: // STATE 63 - Elevator3.pml:112 - [up = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = ((int)now.up);
		now.up = 1;
#ifdef VAR_RANGES
		logval("up", ((int)now.up));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 105: // STATE 64 - Elevator3.pml:31 - [queue[rear] = req_floor] (0:74:3 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.queue[ Index(now.rear, 100) ];
		now.queue[ Index(now.rear, 100) ] = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("queue[rear]", now.queue[ Index(now.rear, 100) ]);
#endif
		;
		/* merge: rear = (rear+1)(74, 65, 74) */
		reached[0][65] = 1;
		(trpt+1)->bup.ovals[1] = now.rear;
		now.rear = (now.rear+1);
#ifdef VAR_RANGES
		logval("rear", now.rear);
#endif
		;
		/* merge: up_stop[req_floor] = 1(74, 67, 74) */
		reached[0][67] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("up_stop[Input:req_floor]", ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 106: // STATE 68 - Elevator3.pml:54 - [((max_up>req_floor))] (113:0:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.max_up>((P0 *)_this)->_2_1_req_floor)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: _2_1_req_floor */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_2_1_req_floor;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_2_1_req_floor = 0;
		/* merge: max_up = max_up(113, 69, 113) */
		reached[0][69] = 1;
		(trpt+1)->bup.ovals[1] = now.max_up;
		now.max_up = now.max_up;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 73, 113) */
		reached[0][73] = 1;
		;
		/* merge: .(goto)(113, 76, 113) */
		reached[0][76] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 107: // STATE 71 - Elevator3.pml:115 - [max_up = req_floor] (0:113:1 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(113, 73, 113) */
		reached[0][73] = 1;
		;
		/* merge: .(goto)(113, 76, 113) */
		reached[0][76] = 1;
		;
		/* merge: .(goto)(113, 78, 113) */
		reached[0][78] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 108: // STATE 80 - Elevator3.pml:121 - [(((req_floor-cur_floor)>0))] (88:0:1 - 1)
		IfNotBlocked
		reached[0][80] = 1;
		if (!(((((P0 *)_this)->_2_1_req_floor-now.cur_floor)>0)))
			continue;
		/* merge: up_stop[req_floor] = 1(0, 81, 88) */
		reached[0][81] = 1;
		(trpt+1)->bup.oval = ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("up_stop[Input:req_floor]", ((int)now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 109: // STATE 82 - Elevator3.pml:54 - [((max_up>req_floor))] (91:0:1 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((now.max_up>((P0 *)_this)->_2_1_req_floor)))
			continue;
		/* merge: max_up = max_up(0, 83, 91) */
		reached[0][83] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = now.max_up;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		/* merge: .(goto)(0, 87, 91) */
		reached[0][87] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 110: // STATE 85 - Elevator3.pml:123 - [max_up = req_floor] (0:0:1 - 1)
		IfNotBlocked
		reached[0][85] = 1;
		(trpt+1)->bup.oval = now.max_up;
		now.max_up = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("max_up", now.max_up);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 111: // STATE 89 - Elevator3.pml:31 - [queue[rear] = req_floor] (0:113:2 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.queue[ Index(now.rear, 100) ];
		now.queue[ Index(now.rear, 100) ] = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("queue[rear]", now.queue[ Index(now.rear, 100) ]);
#endif
		;
		/* merge: rear = (rear+1)(113, 90, 113) */
		reached[0][90] = 1;
		(trpt+1)->bup.ovals[1] = now.rear;
		now.rear = (now.rear+1);
#ifdef VAR_RANGES
		logval("rear", now.rear);
#endif
		;
		/* merge: .(goto)(113, 105, 113) */
		reached[0][105] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 112: // STATE 93 - Elevator3.pml:126 - [down_stop[req_floor] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][93] = 1;
		(trpt+1)->bup.oval = ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]);
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = 1;
#ifdef VAR_RANGES
		logval("down_stop[Input:req_floor]", ((int)now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 113: // STATE 94 - Elevator3.pml:63 - [((min_down<req_floor))] (103:0:1 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		if (!((now.min_down<((P0 *)_this)->_2_1_req_floor)))
			continue;
		/* merge: min_down = min_down(0, 95, 103) */
		reached[0][95] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = now.min_down;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		/* merge: .(goto)(0, 99, 103) */
		reached[0][99] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 114: // STATE 97 - Elevator3.pml:127 - [min_down = req_floor] (0:0:1 - 1)
		IfNotBlocked
		reached[0][97] = 1;
		(trpt+1)->bup.oval = now.min_down;
		now.min_down = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("min_down", now.min_down);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 115: // STATE 101 - Elevator3.pml:31 - [queue[rear] = req_floor] (0:113:2 - 1)
		IfNotBlocked
		reached[0][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.queue[ Index(now.rear, 100) ];
		now.queue[ Index(now.rear, 100) ] = ((P0 *)_this)->_2_1_req_floor;
#ifdef VAR_RANGES
		logval("queue[rear]", now.queue[ Index(now.rear, 100) ]);
#endif
		;
		/* merge: rear = (rear+1)(113, 102, 113) */
		reached[0][102] = 1;
		(trpt+1)->bup.ovals[1] = now.rear;
		now.rear = (now.rear+1);
#ifdef VAR_RANGES
		logval("rear", now.rear);
#endif
		;
		/* merge: .(goto)(113, 105, 113) */
		reached[0][105] = 1;
		;
		/* merge: .(goto)(113, 107, 113) */
		reached[0][107] = 1;
		;
		/* merge: .(goto)(113, 109, 113) */
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 116: // STATE 109 - Elevator3.pml:134 - [.(goto)] (0:113:0 - 26)
		IfNotBlocked
		reached[0][109] = 1;
		;
		/* merge: .(goto)(113, 111, 113) */
		reached[0][111] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 117: // STATE 113 - Elevator3.pml:137 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][113] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

