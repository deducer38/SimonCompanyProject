public  class ListDemo {
    public static string candidatesList(integer i) {

        List<string> listCandidates = new List<string>();
        listCandidates.add('Marc');
        listCandidates.add('Zuckerberg');
        listCandidates.add('Maikey');
        listCandidates.add('Bill');
        System.debug('list of candidates ' + listCandidates);
        string returnValue = '';
        if (i>=0 && i < listCandidates.size()) {
            returnValue = listCandidates[i];
        } else {
            returnValue = 'No such value';
        }
        return returnValue;
    
    }

    public static void randomIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);    
        listInteger.add(15);

        integer index3value = listInteger.get(3);
        Integer index3value2 = listInteger[3];

        System.debug('value at index 3 '+ index3value);
        System.debug('value at index 3 '+ index3value2);
        System.debug('list of random integers is '+listInteger);
        
    }
    public static void allCats(){
        // below creating a list of instances of Cat class
        List<cat> listCats = new List<cat>();
        // how to add cats in the list
        Cat sfCat2 = new Cat('Leo', 'Orange');
        Cat sfCat3 = new Cat('Luna', 'Brown');
        Cat batch11Cat = new Cat('fluffykins', 'white');
        listCats.add(sfCat2);
        listCats.add(sfCat3);
        listCats.add(batch11Cat);
        listCats.add(sfCat2);
        System.debug('cat list ' + listCats);

    }
}
