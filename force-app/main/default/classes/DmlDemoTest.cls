@isTest
public class DmlDemoTest {
    @isTest
    public static void dmlInsert1Test() {
        DmlDemo.dmlInsertDemo_stndObj(); // This will create a record in TEST ENVIRONMENT, not in ORG.
        // assert means actual test.
        // we need to check if account is created
        // get records, and test
        List<Account> listAcc = [select id, name from Account where name = 'Softinnovas2'];
        System.assertEquals(1, listAcc.size());
        System.assertEquals('Softinnovas2', listAcc[0].Name); 
    }
    @isTest
    public static void dmlInsert4Test() {
        // prepare data - this method is called in test environment, so the account will not be created, 
        // I need to create it myself here
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;
        DmlDemo.dmlUpdateDemo_4();

        List<Contact> listContact = [select id, lastname from Contact where LastName = 'Biden'];
        System.assertEquals(1, listContact.size());
    }
    @isTest
    public static void dmlInsertDemo_5_Test() {
        // prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.project_name__c = 'Test SP';
        sp.Status__c = 'New';
        insert sp;
        DmlDemo.dmlInsertDemo_5();
        
        // assert
        List<Salesforce_Ticket__c> listST = [select id, name, subject__c, Salesforce_Project__c
                                from Salesforce_Ticket__c where Salesforce_Project__c =: sp.id and subject__c = 'Learn Apex DMLS']; 
        System.assertEquals('Learn Apex DMLS', listST[0].subject__c);                        
    }
    
}
