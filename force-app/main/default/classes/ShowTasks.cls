public with sharing class ShowTasks {
   public static List<Task> returnTasks(){
    return [SELECT id , subject FROM TASK WHERE CreatedDate = TODAY ORDER BY CreatedDate DESC LIMIT 5];
   }
}