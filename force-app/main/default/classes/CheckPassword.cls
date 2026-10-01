public with sharing class CheckPassword {
    //check whether the user has entered a correct password or not , 
    // if the user enters the wrong password for 3 times , block the account.
    public static String correctpassword = 'Manish@123';
    public static Integer failedAttempts = 1;
    public static void password1(){
        string wrongpass='';
        wrongpass= testPassword('yashh');
        system.debug(wrongpass);
         wrongpass= testPassword('yashh1');
        system.debug(wrongpass);
         wrongpass= testPassword('yashh2');
        system.debug(wrongpass);
         wrongpass= testPassword('yashh3');
        system.debug(wrongpass);
    }
    public static string testPassword(string password){

        if(password != correctpassword){
            if(failedAttempts > 3){
                return 'Your Account has been Blocked';
            }
            failedAttempts++;
            return 'password is incorrect';


            

        }

        else{
            return 'password is correct';
        }
        
    }
    

}