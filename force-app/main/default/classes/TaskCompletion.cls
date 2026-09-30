public class TaskCompletion {

// THIS IS THE INVOCABLE METHOD , TO CALL THE APEX FROM FLOW DIRECTLY.
// WHEN A USER CLICKS ON THE SHOW TASKS FROM ACCOUNT UI, THE TASK STATUS MUST GET COMPLETED.

   @InvocableMethod(label='Mark Tasks Complete')
   public static list<string> markTasksComplete(List<Id> taskIds) {

    list<string> returnmsg = new list<string>();
try{
    list<task> TaskUpdate= [SELECT Id, Status FROM task WHERE WhatId in :taskIds AND Status !='Completed'];
    for(task t : TaskUpdate){
        t.Status = 'Completed';


    }

 update TaskUpdate;
  return new list<string>{'Success'};
   }
   catch(exception e){
    return new list<string>{'Failed'};
}
   
}

}