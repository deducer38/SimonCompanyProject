AccountsScheduleable asch = new AccountsScheduleable();
string crn = '0 0 13 * * ?';

System.schedule('account sc again', crn, asch);