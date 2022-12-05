public class SoqlDEMO2 {
    public static void soqlChildToParent_1() {
        List<Contact> listContacts = [select id, name, account.name, account.industry FROM Contact WHERE
                                    account.industry = 'Energy'];
        System.debug(listContacts); // by default in contact we do not have account fields. so this doesn't show.
        for (contact eachContact : listContacts) {
            // get account name from contact record
            String accName = eachContact.Account.Name;
                    // contact name from contact record
            System.debug('Contact name ' + eachContact.Name + ', its account name is ' + accName);
        }
    }
    public static void soqlParentToChild_1() {
        // if our outer query is account, inner query is opportunity.
        // what list would it would return
        List<Account> listAccOpp = [select id, name, annualrevenue, type, (select name, amount from Opportunities where stagename = 'Closed Won') from Account where type = 'Customer - Direct'];
        for (account eachAccount : listAccOpp) {
            System.debug('Account name ' + eachAccount.name + ' annual revenue ' + eachAccount.AnnualRevenue);
            List<Opportunity> listOpps = eachAccount.Opportunities;
            for (opportunity eachOpp : listOpps) {
                // without declaring listOpps we could below write as eachAccount.Opportunities.Name instead of eachOpp.Name
                System.debug('-- opp name => ' + eachOpp.Name + ', amoount is ' + eachOpp.Amount);
            }
        }
        
    }
}
