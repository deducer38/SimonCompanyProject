Account ac1 = new Account();
ac1.name = 'ABC tes';
ac1.Industry = 'Energy';

Account ac2 = new Account();
ac2.Name = 'xyz test';

Account ac3 = new Account();
Account ac4 = new Account();

List<Account> listAcc = new List<Account>{ac1, ac2, ac3, ac4};

List<Database.SaveResult> results = Database.insert(listAcc, false);

for (Database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        System.debug('Inserted successfully, record id is ' + eachResult.getId());
    } else {
        System.debug('errorred out, errors are ' + eachResult.getErrors());
    }
}