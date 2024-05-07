	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM p7 */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p6 */
;
		
	case 6: // STATE 1
		goto R999;

	case 7: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p5 */
;
		;
		;
		;
		
	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p4 */
;
		;
		;
		;
		
	case 13: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p2 */
;
		
	case 14: // STATE 1
		goto R999;

	case 15: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM p1 */
;
		;
		
	case 17: // STATE 6
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 18: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 20: // STATE 3
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Elevator */
;
		;
		;
		;
		
	case 23: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		;
		
	case 25: // STATE 6
		;
		now.isempty = trpt->bup.oval;
		;
		goto R999;

	case 26: // STATE 8
		;
		now.isempty = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 28: // STATE 13
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 14
		;
		now.cur_time = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 32: // STATE 17
		;
		now.isempty = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 19
		;
		now.isempty = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 35: // STATE 24
		;
		now.y = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 25
		;
		now.front = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 27
		;
		now.y = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 31
		;
		now.req_floor = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 40: // STATE 33
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 34
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 47: // STATE 42
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;

	case 48: // STATE 43
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 50: // STATE 45
		;
		now.up_stop[ Index(now.cur_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 46
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 53: // STATE 48
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 55: // STATE 56
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 57
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 58
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;

	case 58: // STATE 60
		;
		now.cur_floor = trpt->bup.oval;
		;
		goto R999;

	case 59: // STATE 63
		;
		now.cur_time = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 64
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 61: // STATE 69
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;

	case 62: // STATE 70
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 68: // STATE 78
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;

	case 69: // STATE 79
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 71: // STATE 81
		;
		now.down_stop[ Index(now.cur_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 72: // STATE 82
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 74: // STATE 84
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 76: // STATE 92
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;

	case 77: // STATE 93
		;
		now.cur_dir = trpt->bup.oval;
		;
		goto R999;

	case 78: // STATE 94
		;
		now.isDoorOpen = trpt->bup.oval;
		;
		goto R999;

	case 79: // STATE 96
		;
		now.cur_floor = trpt->bup.oval;
		;
		goto R999;

	case 80: // STATE 99
		;
		now.cur_time = trpt->bup.oval;
		;
		goto R999;

	case 81: // STATE 100
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;
;
		
	case 82: // STATE 111
		goto R999;

	case 83: // STATE 112
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Input */

	case 84: // STATE 3
		;
		now.request[ Index(((P0 *)_this)->cur_time_input, 21) ] = trpt->bup.ovals[1];
		((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		;
		;
		
	case 87: // STATE 7
		;
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 88: // STATE 9
		;
		now.max_up = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 89: // STATE 11
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 90: // STATE 17
		;
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 91: // STATE 19
		;
		now.min_down = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 92: // STATE 21
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;

	case 93: // STATE 26
		;
		now.down = trpt->bup.oval;
		;
		goto R999;

	case 94: // STATE 30
		;
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.ovals[2];
		now.rear = trpt->bup.ovals[1];
		now.queue[ Index(now.rear, 100) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 95: // STATE 32
		;
		now.min_down = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 96: // STATE 34
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 98: // STATE 44
		;
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 99: // STATE 46
		;
		now.min_down = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 100: // STATE 48
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;

	case 101: // STATE 54
		;
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 102: // STATE 56
		;
		now.max_up = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 103: // STATE 58
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 104: // STATE 63
		;
		now.up = trpt->bup.oval;
		;
		goto R999;

	case 105: // STATE 67
		;
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.ovals[2];
		now.rear = trpt->bup.ovals[1];
		now.queue[ Index(now.rear, 100) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 106: // STATE 69
		;
		now.max_up = trpt->bup.ovals[1];
	/* 0 */	((P0 *)_this)->_2_1_req_floor = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 107: // STATE 71
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 108: // STATE 81
		;
		now.up_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 109: // STATE 83
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 110: // STATE 85
		;
		now.max_up = trpt->bup.oval;
		;
		goto R999;

	case 111: // STATE 90
		;
		now.rear = trpt->bup.ovals[1];
		now.queue[ Index(now.rear, 100) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 112: // STATE 93
		;
		now.down_stop[ Index(((P0 *)_this)->_2_1_req_floor, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 113: // STATE 95
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;

	case 114: // STATE 97
		;
		now.min_down = trpt->bup.oval;
		;
		goto R999;

	case 115: // STATE 102
		;
		now.rear = trpt->bup.ovals[1];
		now.queue[ Index(now.rear, 100) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		
	case 116: // STATE 109
		goto R999;

	case 117: // STATE 113
		;
		p_restor(II);
		;
		;
		goto R999;
	}

