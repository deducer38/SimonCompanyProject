setDemo.citySet();
setDemo.randomIntegerSet();

list<integer> listInteger = new List<Integer>();
        listInteger.add(10); 
        listInteger.add(15); 
        listInteger.add(21); 
        listInteger.add(15); 
        listInteger.add(12);
        listInteger.add(18);

System.debug('list ' + listInteger);
Set<Integer> setInt = setDemo.setFromList(listInteger);
System.debug('set ' + setInt);

set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('TOKYO');

set<string> mySET = setDemo.capitalizeSet(cities);
System.debug(mySET);
