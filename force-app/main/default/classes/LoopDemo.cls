public class LoopDemo {
    public void printIntWhile(){
        integer count = 1;
        while (count <= 25) {
            System.debug(count);
            count++;
            
        }
    }
    public void printNnumbers(integer n){
        for (Integer i = 0; i < n; i++) {
            System.debug(i);
        }
    }
    public void printNOddNumbers(integer startInt, integer endInt){
        if (startInt > endInt) {
            System.debug('not Allowed');
        } else {
            for (Integer i = startInt; i < endInt; i++){
                System.debug('i is ' + i);
                integer remainder = math.mod(i, 2);
                if (remainder == 1) {
                    System.debug(i);
                }
                
            }

        }
        
    }
}


