trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    
    List<Account> accTriggerNew = trigger.new;

    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('BEFORE UPDATE Newly  record => ' + accTriggerNew);
        System.debug('BEFORE UPDATE Newly  accounts count ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('BEFORE UPDATE each acc id is ' + eachAcc.id + 'each acc name is ' + eachAcc.name);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('AFTER  Newly UPDATE record => ' + accTriggerNew);
        System.debug('AFTER  Newly UPDATE accounts count ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER UPDATE each acc id is ' + eachAcc.id + 'each acc name is ' + eachAcc.name);
        }
    }

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('BEFORE INSERT Newly inserted record => ' + accTriggerNew);
        System.debug('BEFORE INSERT Newly inserted accounts count ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('BEFORE each acc id is ' + eachAcc.id + 'each acc name is ' + eachAcc.name);
        }
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('AFTER INSERT Newly inserted record => ' + accTriggerNew);
        System.debug('AFTER INSERT Newly inserted accounts count ' + accTriggerNew.size());

        for (account eachAcc : accTriggerNew) {
            System.debug('AFTER each acc id is ' + eachAcc.id + 'each acc name is ' + eachAcc.name);
        }
    }
    */

    /*
    // insert
    if (Trigger.isInsert && Trigger.isBefore) {
        System.debug('account before insert trigger called.');
    }
    if (Trigger.isInsert && Trigger.isAfter) {
        System.debug('account after insert trigger called.');
    }
    // update
    if (Trigger.isUpdate && Trigger.isBefore) {
        System.debug('account before update trigger called.');
    }
    if (Trigger.isUpdate && Trigger.isAfter) {
        System.debug('account after update trigger called.');
    }
    */


    
    /*
    if (Trigger.isInsert) {
        System.debug('account before INSERT trigger called.');
    }
    if (Trigger.isUpdate) {
        System.debug('account before UPDATE trigger called...');
    }
    */

    /*
    if (Trigger.isBefore) {
        System.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        System.debug('Account after insert trigger called.');
    }
    */
}