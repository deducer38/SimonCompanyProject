trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    if (Trigger.isBefore) {
        System.debug('We are in BEFORE. Not Saved.');
        if (Trigger.isInsert) {
            System.debug('We are in before insert trigger');
        }
        if (Trigger.isUpdate) {
            System.debug('We are in before update trigger');
        }
    }
    if (Trigger.isAfter) {
        System.debug('We are in AFTER. SBNC');
        if (Trigger.isInsert) {
            System.debug('We are in after insert trigger');
        }
        if (Trigger.isUpdate) {
            System.debug('We are in after update trigger');
        }
    }
}