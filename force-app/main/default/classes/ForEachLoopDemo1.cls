public class ForEachLoopDemo1 {
    public static void iterateIntegerList() {
        List<integer> listInteger = new List<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);

        for (integer eachInteger : listInteger) {
            System.debug(eachInteger);
        }

    }
}
