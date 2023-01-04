@isTest
public class AccountsBatchTest {
    @isTest
    private static void testBatch1() {
        // 1. prepare data
        List<Account> listAcc = new List<Account>();

        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'Pi account ' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        // 2. start test
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 1000); // we use 1000 to make sure we do it in ONCE. 
        //test cannot do in batches, we cannot divide
        
        Test.stopTest();

        // 3. Assert
        List<Account> getAcc = [select id, description from Account];
        System.assert(getAcc[0].description.contains('batch'));
    }
}
