public class AccountUpdateHelper {
    // invocable method we can call from Process Builder or Flows
    @invocableMethod
    public static void accountWebsiteUpdate(List<Id> accIds) {
        System.debug('inside invocable method');
        // get list of accounts from accids
        List<Account> listAcc = [select id, website, name from Account where id in :accIds];
        for (Account eachAcc : listAcc) {
            // update website
            eachAcc.Website = 'www.softinnovas.com';
        }
        //update DML
        update listAcc;

    }
}
