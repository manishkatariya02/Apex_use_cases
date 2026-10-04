public with sharing class CheckFullForm {
    public static string testFullForm(string fullform){

        list<full_versions__c> ver = [SELECT Id , name , Full_Forms__c FROM full_versions__c WHERE name =: fullform LIMIT 1];

        if(ver != null && ver.size() == 1){
            return ver[0].Full_Forms__c;
        }
        else{
            return 'nothing found';
        }


    }
}