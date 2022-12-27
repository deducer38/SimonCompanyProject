trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
         //call trigger handler to CREATE salesforce ticket.
         SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

         // call future method
         System.debug('Calling future method NOW');
         // spUpdateDescription is a future method. I cannot pass List<sObjects> as param, but I can Set<id>.
         // pass Trigger.newMap.keyset() which is set<id>.
         SalesforceProjectTriggerHandler.spUpdateDescription(Trigger.newMap.keyset());
         System.debug('Called future method END');
    }
    if (Trigger.isBefore && trigger.isUpdate) {
        // call validation method here.
        // SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && trigger.isUpdate) {
        //a
        SalesforceProjectTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
}