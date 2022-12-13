public class AssetTriggerHandler {
    public static void Assethandlerupdate(List<Asset> assTriggerNew, List<Asset> assTriggerOld, Map<id,Asset> assTriggerNewMap, Map<Id,Asset> assTriggerOldMap) {
        for (Asset newAss : assTriggerNew) {
            if (newAss.id == null) {
                if (newAss.Status == 'Shipped') {
                    newAss.description = 'Asset is shipped';
                }
                if (newAss.Status == 'Installed') {
                    newAss.description = 'Asset is installed';
                }
            } else {
                Asset oldAss = assTriggerOldMap.get(newAss.id);
                if (oldAss.Status != 'Shipped') {
                    if (newAss.Status == 'Shipped') {
                        newAss.description = 'Asset is shipped';
                    }
                    if (newAss.Status == 'Installed') {
                        newAss.description = 'Asset is installed';
                    }
                    
                }
            }
    }
}
}