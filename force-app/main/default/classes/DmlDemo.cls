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

    
}
