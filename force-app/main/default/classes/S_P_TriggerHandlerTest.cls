@isTest
public class S_P_TriggerHandlerTest {
    @isTest
    private static void testSPUpdateDescription() {
        salesforce_project__c sp1 = new salesforce_project__c();
        sp1.project_name__c = 'SP Test 1';

        salesforce_project__c sp2 = new salesforce_project__c();
        sp2.project_name__c = 'SP Test 2';

        List<salesforce_project__c> listSP = new List<salesforce_project__c>{sp1, sp2};
        insert listSP;

        set<id> setSPId = new Set<Id>{sp1.id, sp2.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.spUpdateDescription(setSPId);
        Test.stopTest();

        List<salesforce_project__c> allSP = [select id, description__c from salesforce_project__c];
        System.assert(allSP[0].description__c.contains('future'));
        
    }

}
