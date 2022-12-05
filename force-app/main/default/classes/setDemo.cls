public class setDemo {
    public static void citySet() {
        Set<string> cities = new Set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Nairobi');
        cities.add('Berlin');
        cities.add('Lisbon');// no error but not added 
        cities.add('Nairobi');
        cities.add('TOKYO');
        System.debug('cities are ' + cities);

    }
    public static void randomIntegerSet() {
        Set<integer> setInt = new Set<integer>();           
        setInt.add(15);
        setInt.add(10);
        setInt.add(21);
        setInt.add(15);
        setInt.add(15);
        System.debug(setInt);
        
    }
    public static set<Integer> setFromList(list<integer> intList) {
        set<integer> returnSet = new Set<Integer>();
        returnSet.addAll(intList);
        return returnSet;
        
    }
    public static Set<String> capitalizeSet(set<string> setStr) {
        Set<String> returnSet = new Set<String>();

        for (string eachItem : setStr) {
            string tempStr = eachItem.toUpperCase();
            returnSet.add(tempStr); 
        }
        return returnSet;

    }
}
