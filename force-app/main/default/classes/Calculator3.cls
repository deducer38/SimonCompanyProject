public class Calculator3 {
    //method name add
    // parameter list<integer>
    // return type integer (return addition of all elements in the list)
    public static integer add(List<integer> listInt) {
        // first take temporary variable
        integer returnInt = 0;
        for (integer eachInt : listInt) {
            System.debug('eachInt ' + eachInt);
            returnInt += eachInt;
            System.debug('returnInt ' + returnInt);
        }
        return returnInt;
    }
}
