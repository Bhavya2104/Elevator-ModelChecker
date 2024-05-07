
//single Elevator system Complex

#define TOTAL_FLOOR  10 
int cur_floor = 0;
bool dooropen = false;
int max_floor = 0;
int min_floor = TOTAL_FLOOR;
chan req = [10] of {int};
int req_floor;
int idle;
int moving;

 

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


proctype producer(){
    byte arr[10] = {9,2,1,4,5,6,3,4,10,2};
    int i = 0;
    do
    :: i<10 ->
        req!arr[i];
        i++;
    od;
}

proctype elevator(){
    
    do
    
    :: nempty(req)->
        req?req_floor;
        
        if
        ::(req_floor==cur_floor)->
            dooropen = true;
            printf("Door open at floor %d\n",cur_floor);
            dooropen = false;
        ::(req_floor<cur_floor)->
            do
            ::(req_floor!=cur_floor)->
                cur_floor = cur_floor-1;
                moving = 1;
                min_floor = min(min_floor,cur_floor);
            ::else->
                break;
            od;
            dooropen = true;
            moving = 0;
            //assert(cur_floor!=7&&dooropen==true);
            printf("Door open at floor %d\n",cur_floor);
            dooropen = false;
        ::(req_floor>cur_floor)->
            do
            ::(req_floor!=cur_floor)->
                
                cur_floor = cur_floor+1;
                moving = 1;
                max_floor = max(max_floor,cur_floor)
            ::else->
                break;
            od;
            dooropen = true;
            moving = 0;
            //assert(cur_floor!=7&&dooropen==true);
            printf("Door open at floor %d\n",cur_floor);
            dooropen = false;
        fi;
    ::empty(req)->
        idle = 1;
    od;
}

active proctype monitor()
{
    do
        :: true -> assert((cur_floor!=7&&cur_floor!=8)||dooropen==false);
    od;
}


init{
    atomic{ 
    run producer();
    }
    atomic{ 
    run elevator();
    run monitor();
    }
    // ltl p1{
    // [](cur_floor==9)
    // }
}