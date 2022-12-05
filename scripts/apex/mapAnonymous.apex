Map<String,String> mapCntCurrency = new Map<String,String>();
mapCntCurrency.put('USA', 'Dollar');
mapCntCurrency.put('Japan', 'Yen');
mapCntCurrency.put('Spain', 'Euro');
mapCntCurrency.put('Netherlands', 'Euro');
mapCntCurrency.put('India', 'Rupees');
mapCntCurrency.put('India', 'Rupee'); // override and second will appear when debug
mapCntCurrency.put('El Salvador', 'Bitcoin');
mapCntCurrency.put('Turkiye', 'Lira');

System.debug(mapCntCurrency);

string IndiaCurrency = mapCntCurrency.get('India');
string country = 'Spain';
string countryCurrency = mapCntCurrency.get(country);
System.debug('India currency is ' + IndiaCurrency);
System.debug(country + ' currency is ' + countryCurrency);

// get all countries (keys)
set<string> countrySet = mapCntCurrency.keySet();
System.debug('country set => ' + countrySet);

List<String> currencyList = mapCntCurrency.values();
system.debug('currency list is => ' + currencyList);

Set<String> Countries = mapCntCurrency.keySet();
for(string eachCountry : Countries){
    system.debug('Country is ' + eachCountry);

    // Fetch currency using .get() method
    string eachCurrency = mapCntCurrency.get(eachCountry);
    System.debug('Currency is ' + eachCurrency);
    System.debug('Country is ' + eachCountry + ' and currency is ' + eachCurrency);
}