//this is raw version  



#define TOTAL_FLOOR  3 
#define TIME 10
#define NO 4
byte request[TIME+1] = {3,1,4,2,3,3,4,3,1,3};
int cur_floor = 0 , cur_dir = 0;
int max_up = 0 , min_down = TOTAL_FLOOR;
bool down = false, up = false;
bool up_stop[TOTAL_FLOOR+1] , down_stop[TOTAL_FLOOR+1];
bool isDoorOpen = false;
int max_floor = 0;
bool flag = false;
int cnt = 0;
int cnt2 = 0;
 int x;
//chan q = [10] of {int};

	#define QUEUE_SIZE 10
	
	int queue[QUEUE_SIZE];
	int front = 0;
	int rear = 0;
	int isempty = 0;
    int y = -1;
	inline mpty() {
	    if
	    ::(front!=rear)->
		    isempty = 0;  
	    ::else->
	        isempty = 1;
	     fi;
	}
	
	
	
	inline enqueue(item) {
	    
	        queue[rear] = item;
	        rear = rear + 1;
	   
	}
	
	inline dequeue() {
	    //int item;
		mpty();
	    if 
	    ::(isempty==0) 
	        y = queue[front];
	        front = front + 1;
	       
	    ::else-> 
	        y = -1; 
	    fi;
	}
	
	


inline max(a, b) {
     if
     ::(a>b)->
     return a;
     ::else->
        return b;
     fi;
    
}
inline min(a, b) {
      if
     ::(a<b)->
     return a;
     ::else->
        return b;
     fi;
}


proctype Input(int cur_time_input)
{


    atomic{    
    if
    :: (cur_time_input < TIME) ->
        int req_floor = request[cur_time_input];
        // printf("req_floor:%d,%d\n", req_floor,cur_time_input);
        request[cur_time_input] = NO;
            if
            :: (req_floor != NO) ->
                if
                :: (cur_dir == 1) ->
                    if
                    :: (req_floor - cur_floor >0) ->
                        // printf("choice1:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        up_stop[req_floor] = true;
                        max_up = max(max_up, req_floor);
                    :: else ->
                        if
                        :: (down) ->
                            // printf("choice2:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                            down_stop[req_floor] = true;
                            min_down = min(min_down, req_floor);
                        ::else ->
                            // printf("choice3:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                            down = true;
                            enqueue(req_floor);
                            down_stop[req_floor] = true;
                            min_down = min(min_down, req_floor);
                        fi;
                    fi;

                :: (cur_dir == -1) ->
                    if
                    :: (req_floor - cur_floor < 0) ->
                        // printf("choice4:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        down_stop[req_floor] = true;
                        min_down = min(min_down, req_floor);
                    :: else ->
                        if
                        :: (up) ->
                            // printf("choice5:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                            up_stop[req_floor] = true;
                            max_up = max(max_up, req_floor);
                        ::else ->
                            // printf("choice6:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                            up = true;
                            enqueue(req_floor);
                            up_stop[req_floor] = true;
                            max_up = max(max_up, req_floor);
                        fi;
                    fi;

                ::else ->
                    if
                    :: (req_floor - cur_floor > 0) ->
                        // printf("choice7:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        up_stop[req_floor] = true;
                        max_up = max(max_up, req_floor);
                        enqueue(req_floor);
                    :: else ->
                        // printf("choice8:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        down_stop[req_floor] = true;
                        min_down = min(min_down, req_floor);
                        enqueue(req_floor);
                    fi;
                    
                fi;

            fi;
    fi;
    }   

}

int cur_time = 0;
proctype Elevator()
{
    do
    :: (cur_time>=TIME) ->break;
    :: (cur_time <TIME) ->
        run Input(cur_time);
        mpty();
        if
        :: (isempty==1 && cur_dir == 0) ->
            // printf("my1:%d\n",cur_time);
            isDoorOpen = true;
            cur_time = cur_time+1;

        :: (isempty==0&& cur_dir == 0) ->
            // printf("myhere3\n");
            int req_floor;
            dequeue();
            req_floor = y;
            // printf("my2: %d, %d, %d\n",req_floor,cur_floor, cur_dir);
            if
            :: (req_floor > cur_floor) -> 
                cur_dir = 1;
                printf("Going up..\n");
                // printf("myhere1: %d,%d",max_up, cur_floor);
                do
                ::true ->

                    printf("Elevator is currently at floor: %d and Time: %d\n", cur_floor, cur_time);
                    // printf("myhereloop: %d,%d",max_up, cur_floor);
                    if
                    :: (max_up < cur_floor) -> 
                        // printf("break_up\n");
                        break; 
                    :: (max_up >= cur_floor) ->
                        // printf("here1: %d\n", up_stop[cur_floor]);
                        if
                        :: (up_stop[cur_floor] == true) ->
                            printf("Door Opened at floor: %d\n", cur_floor);
                            up_stop[cur_floor] = false;
                            printf("Door closed at floor: %d\n", cur_floor);
                        :: else ->
                            true;
                        fi;
                        // printf("here2\n");
                    fi;

                    // printf("here3\n");
                    if
                    :: (cur_floor == max_up) ->
                        // printf("my4:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        max_up = 0;
                        cur_dir = 0;
                        /*mpty();
                        if
                        :: (isempty==1) ->
                            cur_dir = 0;
                        :: else ->
                            cur_dir = -1;
                            dequeue();
                        fi;*/
                    ::else ->
                        true;
                    fi;
                // printf("received\n");
                if
                :: (cur_floor != TOTAL_FLOOR)->
                    cur_floor = cur_floor+1;
                ::else ->
                    true;
                fi;
                cur_time = cur_time+1;
                run Input(cur_time);
                od;
            :: else ->
                cur_dir = -1;
                printf("Going down..\n");
                // printf("myhere1: %d,%d",max_up, cur_floor);
                do
                ::true ->

                    printf("Elevator is currently at floor: %d and Time: %d\n", cur_floor, cur_time);
                    // printf("myhereloop: %d,%d",max_up, cur_floor);
                    if
                    :: (min_down > cur_floor) -> 
                        // printf("break_up\n");
                        break; 
                    :: (min_down <= cur_floor) ->
                        // printf("here1: %d\n", up_stop[cur_floor]);
                        if
                        :: (down_stop[cur_floor] == true) ->
                            printf("Door Opened at floor: %d\n", cur_floor);
                            down_stop[cur_floor] = false;
                            printf("Door closed at floor: %d\n", cur_floor);
                        :: else ->
                            true;
                        fi;
                        // printf("here2\n");
                    fi;

                    // printf("here3\n");
                    if
                    :: (cur_floor == min_down) ->
                        // printf("my4:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                        min_down = TOTAL_FLOOR;
                        cur_dir = 0;
                        /*mpty();
                        if
                        :: (isempty==1) ->
                            cur_dir = 0;
                        :: else ->
                            cur_dir = -1;
                            dequeue();
                        fi;*/
                    ::else ->
                        true;
                    fi;
                // printf("received\n");
                if
                :: (cur_floor != 0)->
                    cur_floor = cur_floor-1;
                ::else ->
                    true;
                fi;
                cur_time = cur_time+1;
                run Input(cur_time);
                od;
            fi;
        fi;           
    od;
    printf("LoopExited\n");
}


/*proctype Elevator2()
{
    
   
    do
    ::true ->
    if
    :: (cur_time < 4) ->
        printf("myhere0\n");
        run Input();
        printf("myhere1\n");
        mpty();        
        printf("myhere2:%d,%d\n", isempty, cur_dir);
        if
        :: (isempty==1 && cur_dir == 0) ->
            printf("my1:%d\n",cur_time);
            isDoorOpen = true;
            //d_step{1000};
            cur_time = cur_time+1;
            
        // fi;
        // //mpty();  
        // if
        :: (isempty==0&& cur_dir == 0) ->
            printf("myhere3\n");
            int req_floor;
            cnt = cnt + 1;
            flag = true;
            dequeue();
            req_floor = y;
            printf("my2:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
            if
            :: (req_floor > cur_floor) -> 
                cur_dir = 1;
                flag = true;
                printf("Going up..\n");
            :: else ->
                cur_dir = -1;
                printf("Going down..\n");
            fi;
            cur_time = cur_time + 1;
           // d_step{1000};
        // fi;
        // if
        :: (cur_dir == 1) ->

            printf("my3:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
            cur_floor  = cur_floor +1;
            max_floor = max(max_floor,cur_floor);
            cur_time = cur_time +1;
            if
            :: (up_stop[cur_floor] == true) ->
                printf("my4:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                d_step{2000};
                up_stop[cur_floor] = false;
            fi;

            if
            :: (cur_floor == max_up) ->
                printf("my5:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                max_up = 0;
                // if
                // :: (Empty()==1) ->
                //      isempty = true;
                // fi;
                mpty();
                if
                :: (isempty==1) ->
                    cur_dir = 0;
                :: else ->
                    cur_dir = -1;
                    
                    dequeue();
                fi;
            fi;
            d_step{1000};
        // fi;
        // if
        ::(cur_dir==-1)->
            printf("my6:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
            cur_floor = cur_floor - 1;
            cur_time  = cur_time + 1;
            if
            ::(down_stop[cur_floor]==true)->
                printf("my7:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                d_step{2000};
                down_stop[cur_floor] = false;
            fi;
            if
            ::(cur_floor==min_down)->
                printf("my7:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                // if
                // :: (Empty()==1) ->
                //      isempty = true;
                // fi;
                mpty();
                if 
                :: (isempty==1)->
                    printf("my8:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                    cur_dir=0;
                ::else->
                    printf("my9:%d, %d, %d\n",req_floor,cur_floor, cur_dir);
                    cur_dir = 1;
                    dequeue();
                fi;
            fi;
            d_step{1000};
        fi;
    ::(cur_time==4) -> 
        break;
    fi;    
    od;
}
*/
init{
    
        // run Input();
        run Elevator();
    
    assert(cur_time<=1);
}
