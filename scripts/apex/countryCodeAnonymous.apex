Map<string,Country_Code__c> allCountryCodes = country_code__c.getall();
System.debug('All country codes are ' + allCountryCodes);

for (string eachCountry : allCountryCodes.keyset()) {
    System.debug('Country is ' + eachCountry + ' its code is ' + allCountryCodes.get(eachCountry).code__c);
}