public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){
        Account acc = new Account();
        acc.Name = 'Softinnovas2';
        System.debug('Not inserted' + acc);

        insert acc;
        System.debug('Inserted' + acc);
    }
    public static void dmlInsertDemo_cstmObj(){
        Salesforce_project__c spNew = new Salesforce_project__c();
        spNew.project_name__c = 'Learn DML in Batch 11';
        spNew.description__C = 'We all do great, keep it up';

        insert spNew;

    }
    public static void dmlUpdateDemo_1(){
        account acc = new account();
        acc.Name = 'Softinno';
        insert acc;

        acc.name = 'softisko update';
        update acc;
        system.debug(acc);

    }
    public static void dmlUpdateDemo_3() {
        account acc = [select name from account where name = 'SoftInnovas Inc' limit 1];
        acc.Name = 'SoftInnovas Inc.';
        update acc;
        System.debug('updated acc ' + acc);
    }
    public static void dmlUpdateDemo_4() {
        account acc = [select name from account where name = 'SoftInnovas Inc.' limit 1];

        contact cnt = new contact();
        cnt.LastName = 'Biden';
        cnt.AccountId = acc.Id;
        insert cnt;
        System.debug('Contact record ' + cnt);
    }
    public static void dmlInsertDemo_5() {
        Salesforce_Project__c sp = [select id, name from Salesforce_Project__c ORDER BY Createddate desc limit 1];
        
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'Learn Apex DMLS';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2022, 12, 5);
        st.Salesforce_Project__c = sp.id; //here we connect
        insert st;

        System.debug('New st is ' + st);
        
    }
    public static void dmlInsertMultiple_Right() {
        List<Account> lstAccount = new List<Account>();
        Account acc1 = new Account();
        acc1.name = 'bulk acc 1';
        lstAccount.add(acc1);

        Account acc2 = new Account();
        acc2.name = 'bulk acc2';
        lstAccount.add(acc2);

        Account acc3 = new Account();
        acc3.name = 'bulk acc3';
        lstAccount.add(acc3);

        insert lstAccount;

    }
    public static void dmlInsertMultipleRight_2() {
        List<Account> listOfAcc = new List<Account>();
        for (Integer i = 0; i < 150; i++) {
            account acc = new account();
            acc.name = 'Softinnovas v' + i;
            acc.Active__c = 'Yes';
            listOfAcc.add(acc);
        }
        // check if list is not empty
        if (!listOfAcc.isEmpty()) {
            insert listOfAcc; // execute this only if list is not empty
        }
    }
    public static void dmlUpdateMultiple_right() {
        List<Account> listAcc = [select id, name, Active__c from Account];

        List<Account> updatedAccounts = new List<Account>();

        for (account acc : listAcc) {
            if (acc.Active__c == 'Yes') {
                acc.name = acc.name + 'via B.0';
                updatedAccounts.add(acc);
            }
            
        }
        if (!updatedAccounts.isEmpty()) {
            update updatedAccounts;
        }
    }
    

    
}
