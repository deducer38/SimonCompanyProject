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
    
}
