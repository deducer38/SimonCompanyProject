List<Account> accs = [select id, name from account order by createddate desc limit 15];
AccountQueueableExample aq = new AccountQueueableExample(accs);
Id JobId = System.enqueueJob(aq);