public class MapDemo {
    public static string retrieveMonth(integer m){
        string monthName = '';
        map<integer, string> mapMonth = new map<integer, string>();
        // also: {1=> 'January', 2=> 'February', 3=> 'March', 4=> 'April', 5=> 'May', 6=> 'June', 7=> 'July', 8 => 'August' ,9 => 'September', 10=> 'October', 11=> 'November', 12=> 'December'}
    
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'April'); 
        mapMonth.put(5, 'May');
        mapMonth.put(6, 'June');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'August');
        mapMonth.put(9, 'September');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'November');
        mapMonth.put(12, 'December');

        boolean keyExists = mapMonth.containsKey(m);
        if (keyExists)
            monthName = mapMonth.get(m);
        else 
            monthName = 'no such month';
        return monthName;
    }
}
