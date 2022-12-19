trigger CaseTrigger on Case (before update) {

    if (Trigger.isUpdate) {
        System.debug('Before update case trigger called');
        CaseTriggerHandler.countTriggerExecution ++;
        System.debug('Number of times Trigger ran: '+ CaseTriggerHandler.countTriggerExecution);
        integer size = trigger.size; // same as trigger.new.size
        CaseTriggerHandler.countTriggerRecords += size;
        System.debug('Number of records updated: ' + CaseTriggerHandler.countTriggerRecords);
    }
}