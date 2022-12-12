trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    

    /* --- SECOND WAY FOR WEBSITE UPDATE COUNT RIGHT BELOW EXAMPLE ---
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        integer count = 0;
        for (Integer i = 0; i < trigger.new.size(); i++) {
            if (trigger.old[i].Website != trigger.new[i].Website) {
                System.debug('Website field updated');
                count++;
            }
            
        }
        System.debug(count);

    }
    */

    /*
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update trigger');

        map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
        map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key
        set<id> accountIds = accTriggerNewMap.keySet(); //all the IDS.
        integer countWebsite = 0;

        for (Id eachId : accountIds) {
            //get NEW account value from NewMap - id is same in newmap and oldmap
            account newAcc = accTriggerNewMap.get(eachId);
            string newWebsite = newAcc.Website;
            system.debug('** newWebsite -> ' + newWebsite);
            //get OLD account value from OldMap
            account oldAcc = accTriggerOldMap.get(eachId);
            string oldWebsite = oldAcc.Website;
            system.debug('** oldWebsite -> ' + oldWebsite);

            if (newWebsite != oldWebsite) {
                system.debug('Account is ' + newAcc.Name + ', website changed to ' + newwebsite);
                countwebsite++;
            }
           
        }
        system.debug('website updated for # of accounts => ' + countwebsite);
    }

    */

}
    /*
    List<account> accTriggerOld = trigger.old; //list of old records
    List<account> accTriggerNew = trigger.new; //list of new records
    map<id, account> accTriggerOldMap = trigger.oldMap; //map of old records, id is key
    map<id, account> accTriggerNewMap = trigger.newMap; //map of new records, id is key

    if (Trigger.isAfter && Trigger.isUpdate) {
        
        // old account name and new account name using ONE for loop.

        // get set of id using map
        set<id> accountIds = accTriggerNewMap.keySet();
        for (id eachId : accountIds) {
            // get new account value - id is same in new and old map
            Account newAcc = accTriggerNewMap.get(eachId);
            System.debug('New Acc name is ' + newAcc.Name);
            // get old account value
            Account oldAcc = accTriggerOldMap.get(eachId);
            System.debug('Old Acc name is ' + oldAcc.Name);
        }
    }
    */


    /*
    //what elements we have in these maps.
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert old => ' + accTriggerOld);
        system.debug('before insert new => ' + accTriggernew);
        system.debug('before insert old map => ' + accTriggerOldMap);
        system.debug('before insert new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert old => ' + accTriggerOld);
        system.debug('after insert new => ' + accTriggernew);
        system.debug('after insert old map => ' + accTriggerOldMap);
        system.debug('after insert new map => ' + accTriggernewMap);
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update old => ' + accTriggerOld);
        system.debug('before update new => ' + accTriggernew);
        system.debug('before Update old map => ' + accTriggerOldMap);
        system.debug('before Update new map => ' + accTriggernewMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update old => ' + accTriggerOld);
        system.debug('after update new => ' + accTriggernew);
        system.debug('after Update old map => ' + accTriggerOldMap);
        system.debug('after Update new map => ' + accTriggernewMap);
    

    }
    */

    
    /*
    if (Trigger.isBefore && Trigger.isUpdate) {
        List<Account> accTriggerOld = Trigger.old; // OLD (previous) values of records
        for (Account oldACC : accTriggerOld) {
            System.debug('old acc name ' + oldACC.Name + ' old acc id ' + oldACC.Id);
        }

        List<Account> accTriggerNew = Trigger.new; // NEW values of records
        for (Account newACC : accTriggerNew) {
            System.debug('old acc name ' + newACC.Name + ' old acc id ' + newACC.Id);
        }
    }
    */



    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        System.debug('Account before insert trigger.old ' + Trigger.old);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        System.debug('Account after insert trigger.old ' + Trigger.old);
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        System.debug('Account before update trigger.old ' + Trigger.old);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        System.debug('Account after update trigger.old ' + Trigger.old);
    }
    */


    /*
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
    */


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