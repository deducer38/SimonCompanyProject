public class AccountQueueableExample implements Queueable{
    // class variable
    public List<Account> listAcc;
    public AccountQueueableExample(List<Account> accounts) {
        // assign parameter variable to class variable
        listAcc = accounts;
    }
    public void execute(QueueableContext qc) {
        List<Account> updateAccs = new List<Account>();
        for (Account eachAcc : listAcc) {
            Account a = new Account();
            a.id = eachAcc.id;
            a.name = eachAcc.Name + '  --- S I';
            updateAccs.add(a);
        }
        update updateAccs;
    }
}
