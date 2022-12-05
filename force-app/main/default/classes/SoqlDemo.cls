public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> listAccount = [select id, name from Account where name like '%a%'];
        System.debug('List of accounts are -> ' + listAccount);
    }
    public static void accountSOQL_11() {
        // if we want to get only one record we dont have to do list
        Account acc = [select id, name from account order by CreatedDate limit 1];
        System.debug('latest created account is ' + acc);

    }
    public static void accountSOQL_2() {
        Account acc = [select id, name, phone, AccountNumber from account order by CreatedDate limit 1];
        System.debug('latest created account is ' + acc);

        String accName = acc.Name;
        String accPhone = acc.Phone;
        System.debug(accName + ' has phone number ' + accPhone);
        System.debug('Account number for ' + accName + ' is '+ acc.AccountNumber);

    }
    public static void accountSOQL_3() {
        List<Account> listacc = [select id, name, phone, accountNumber, ShippingCity from Account ORDER BY CreatedDate desc];
        for (Account eachAcc : listacc) {
            string accName = eachAcc.Name;
            String accPhone = eachAcc.Phone;
            System.debug(eachAcc.AccountNumber + ' belongs to ' + accName + ' and has this phone number' + accPhone);
            string sc = eachAcc.ShippingCity;
        }
    }
    public static void accountSOQL_filter(string accNameFilter){
        //we want to filter with accNameFilter (string varialbe) in SOQL
        //to use variable in SOQL we must add ':' (colon) before variable name
        List<Account> listAcc = [select id, name, phone from Account where name = :accNameFilter];
        System.debug('list of accounts ' + listAcc);
    }

    public static void accountSOQL_filter(List<string> accNames){
        // *** We use IN to FILTER in LIST
        List<Account> listAcc = [select id, name, phone from Account where name IN :accNames];
        System.debug('list of accounts ' + listAcc);
    }
    
}
