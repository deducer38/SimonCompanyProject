ListDemo.allCats();

string valueAt2 = ListDemo.candidatesList(2);
System.debug(valueAt2);

System.debug(ListDemo.candidatesList(0));
ListDemo.randomIntegerList();


List<string> listStr = new List<string>();
if (listStr.isEmpty()) {
    System.debug('The list is EMPTY, OK?');
}

List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);    
        listInteger.add(15);
        listInteger.add(159);
        listInteger.add(8);
        listInteger.add(1);
        System.debug('before sort ' + listInteger);
        listInteger.sort();
        System.debug('after sort ' + listInteger);



