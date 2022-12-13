trigger AssetTrigger on Asset (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        if (Trigger.isUpdate) {
            AssetTriggerHandler.Assethandlerupdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
        if (Trigger.isInsert) {
            AssetTriggerHandler.Assethandlerupdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
        }
    }
}