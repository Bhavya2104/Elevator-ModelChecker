
//2 elevator system-simple

#define TOTAL_FLOOR  10 
int cur_floor1 = 0;
bool dooropen1 = false;
int max_floor1 = 0;
int min_floor1 = TOTAL_FLOOR;
int req_floor1;
int idle1;
//chan elev1 = [1] of {int};

int cur_floor2 = 0;
bool dooropen2 = false;
int max_floor2 = 0;
int min_floor2 = TOTAL_FLOOR;
int req_floor2;
int idle2;
//chan elev2 = [1] of {int};

chan req = [10] of {int};

int overall_idle=0;

int floor;

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

inline abs(a,b){
    if
    ::( a >= b )->
        return a-b;
    ::else ->
        return b-a;
    fi;

}


proctype producer(){
    byte arr[10] = {9,3,2,1,5,1,6,2,1,10};
    int i = 0;
    do
    :: i<10 ->
        req!arr[i];
        i++;
    od;
}



proctype elevator(){
    do
    :: nempty(req) ->
        req?floor;
        printf("req_floor: %d\n",floor);
        printf("curvalues: %d, %d\n",cur_floor1, cur_floor2);
        int a;
        a = abs(floor,cur_floor1);
        int b;
        b = abs(floor , cur_floor2);
        printf("%d,%d\n", a, b);
        if
        :: (a <= b) ->
            req_floor1 = floor;
                idle1 = 0;
                
                if
                ::(req_floor1==cur_floor1)->
                    printf("choice1\n");
                    dooropen1 = true;
                    printf("Door open at floor %d\n",cur_floor1);
                    dooropen1 = false;
                ::(req_floor1<cur_floor1)->
                    do
                    ::(req_floor1!=cur_floor1)->
                        printf("choice2\n");
                        cur_floor1 = cur_floor1-1;
                        min_floor1 = min(min_floor1,cur_floor1);
                    ::else->
                        break;
                    od;
                    dooropen1 = true;
                    //assert(cur_floor!=7&&dooropen==true);
                    printf("Door open at floor %d\n",cur_floor1);
                    dooropen1 = false;
                ::(req_floor1>cur_floor1)->
                    do
                    ::(req_floor1!=cur_floor1)->
                        printf("choice3- %d\n", cur_floor1);
                        cur_floor1 = cur_floor1+1;
                        max_floor1 = max(max_floor1,cur_floor1)
                    ::else->
                        break;
                    od;
                    dooropen1 = true;
                    //assert(cur_floor!=7&&dooropen==true);
                    printf("Door open at floor %d\n",cur_floor1);
                    dooropen1 = false;
                fi;
                idle1 = 1;
        :: else ->
                req_floor2 = floor;
                idle2=0;
                if
                ::(req_floor2==cur_floor2)->
                    printf("choice4\n");
                    dooropen2 = true;
                    printf("Door open at floor %d\n",cur_floor2);
                    dooropen2 = false;
                ::(req_floor2<cur_floor2)->
                    do
                    ::(req_floor2!=cur_floor2)->
                        printf("choice5\n");
                        cur_floor2 = cur_floor2-1;
                        min_floor2 = min(min_floor2,cur_floor2);
                    ::else->
                        break;
                    od;
                    dooropen2 = true;
                    //assert(cur_floor!=7&&dooropen==true);
                    printf("Door open at floor %d\n",cur_floor2);
                    dooropen2 = false;
                ::(req_floor2>cur_floor2)->
                    do
                    ::(req_floor2!=cur_floor2)->
                        printf("choice6\n");
                        cur_floor2 = cur_floor2+1;
                        max_floor2 = max(max_floor2,cur_floor2)
                    ::else->
                        break;
                    od;
                    dooropen2 = true;
                    //assert(cur_floor!=7&&dooropen==true);
                    printf("Door open at floor %d\n",cur_floor2);
                    dooropen2 = false;
                fi;
                idle2 = 1;
        fi;
    :: empty(req) ->
        overall_idle = 1;
    od;
}


init {
    atomic {
        run producer();
    }
    atomic{
        run elevator();
    }
    
    

    //assert(cur_floor1!=9);
}