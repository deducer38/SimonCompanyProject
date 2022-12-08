trigger AccountTrigger on Account (before insert, before update) {
    // before insert
    System.debug('account before INSERT trigger called.');
    System.debug('account before UPDATE trigger called...');


    /*
    if (Trigger.isBefore) {
        System.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        System.debug('Account after insert trigger called.');
    }
    */
}