public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('print data types');
        string batchName = 'Batch 11';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('there are ' + totalCandidates + ' candidates');
        system.debug('is Admin completed ' + isAdminCompleted);

        string batchDescription = batchName + ' is the best';
        system.debug(batchDescription);

        Decimal decValue = 27.49;
        system.debug('decimal value is ' + decValue);

        Long longValue = 23243432643279L;
        system.debug('long value is ' + longValue);
    }

    public void printBasicDataType2(){
        Object ob1 = 'assigning string to object. allowed?';
        Object ob2 = 5000;
        Object ob3 = false;

        system.debug(ob1);
        system.debug(ob2);
        system.debug(ob3);

        ID accountId = '0015h000014QXcyAAG';
        system.debug('id -> ' + accountId);
    }
}
