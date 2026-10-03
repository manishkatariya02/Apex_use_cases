public with sharing class CheckLogs {
  // it will check that how many days the user has learnt something new.
  // in a week.
    public static integer testClass(map<string , boolean> userdays){
        integer numberofdays=0;
        boolean isLearnt;
        for(string days : userdays.keyset()){
           isLearnt = userdays.get(days);
            if(isLearnt){
          numberofdays++;
        }
        }
       
        return numberofdays;
    }
    
}