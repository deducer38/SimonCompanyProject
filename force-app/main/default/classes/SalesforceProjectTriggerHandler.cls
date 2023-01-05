public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        
        try {
            List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();
            // get the deault org value using 'getOrgDefaults' method of custom settings
            DefaultTicketInfo__c defaultValues = DefaultTicketInfo__c.getOrgDefaults();

            for (salesforce_project__c eachSP : spTriggerNew) {
                Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
                // set the ticket subject = custom setting value's subject
                newST.Subject__c = defaultValues.Subject__c; // make it synamic using custom settings
                newST.Salesforce_Project__c = eachSP.Id;
                newST.description__c = defaultValues.Decription__c;
                newST.Priority__c = 'Medium';
                listST.add(newST);
            }
            if (!listST.isEmpty()) {
                List<Database.SaveResult> results = Database.insert(listST, false);
                for (Database.SaveResult eachResult : results) {
                    if (eachResult.isSuccess()) {
                        System.debug('Inserted successfully, record id is ' + eachResult.getId());
                    } else {
                        System.debug('errorred out, errors are ' + eachResult.getErrors());
                    }
                }
            } 
        } catch (Exception ex) {
            for (salesforce_project__c sp : spTriggerNew) {
                sp.addError('Error in creating default ticket. Please contact admin'); 
            }
        }
         
    }
    // while updating salesforce project's status "complete", it should give error and not allow save the project if any of the tickets of that project is not completed.
    public static void completeSPvalidation(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
        set<id> spCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            // statusunde degisiklik olmus ve complete e cevirilmis butun sp lerin id lerini set te topla.
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
                spCompletedIds.add(eachSP.Id);
            }
        }
        // daha sonra bu projelerin complete olmamis ticketlarini liste yap, eger liste bos degilse hata ver:
        //get all tickets which are not compelted.
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                            where Salesforce_Project__c in :spCompletedIds
                                            and status__c != 'Completed'];
        for (salesforce_ticket__c eachST : listST) {
            // o ticketin sp sine ulas(33) ve hata ver(34).
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError(
                'Cannot complete project because all tickets are not completed. Go away.'
            );
        }
    }
    @Future
    public static void spUpdateDescription(set<id> setSPId) {
        System.debug('I am inside the future method');
        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c where id in :setSPId];
        for (Salesforce_Project__c eachSP : allSP) {
            eachSP.description__c += '. Updated from future';
        }
        update allSP;
    }
    // a
    public static void spStatusCompleted(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
        // get spIDs whose status is changed to 'Completed'
        set<id> spCompleted = new set<id>();
        for (salesforce_project__c  sp : spTriggerNew) {
            // how to get is status changed to completed?
            // compare old and new value
            if (sp.Status__C == 'Completed' && sp.Status__c != spTriggerOldMap.get(sp.id).Status__c) {
                spCompleted.add(sp.id);
            }
        }
        // call future method to update tickets 
        if (!spCompleted.isEmpty()) {
            updateTicketStatus(spCompleted);
        }
    }
    // b
    @future
    public static void updateTicketStatus(set<id> ProjectIDs) {
        // get all tickets
        List<salesforce_ticket__c> allTickets = [select id, status__c, salesforce_project__c from salesforce_ticket__c where salesforce_project__c in :ProjectIDs and status__c != 'Completed'];
        // set status to completed
        for (salesforce_ticket__c eachST : allTickets) {
            eachST.status__c = 'Completed';
        }
        // update tickets
        update allTickets;
    }
}