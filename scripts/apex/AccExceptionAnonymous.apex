try {
    Account ac = new Account();
    insert ac;
}  catch (Exception ex) {
    System.debug('Something went wrong buddy..');
    System.debug('ex -> ' + ex.getMessage());
    System.debug('ex line number ' + ex.getLineNumber());
}


System.debug('Apex is simple');



