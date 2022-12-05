public  class Calculator {
    // void means return type 
    // () parameters
    public void welcomeMessage(){
        System.debug('Welcome to Apex calc');
        welcomePrivateMessage(); // you can call this private method here 
    }
    // if you dont write public or private it is automatically private by default
    private void welcomePrivateMessage(){ // this is private method, we cannot call direclty only in a public method
        system.debug('this is private msg'); // we cannot even call it in anonymous apex
    }
    public void printNewMessage(string msg){
        System.debug(msg);
    }
    // return string. Append '...OK Cool' to parameter
    public string printAndReturnMessage(string msg){
        string returnString = msg + '...Ok Cool';
        return returnString;
    }
    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }
    // we can have same method add with either different number of parameters or parameters with different datatype
    public integer add(integer x, integer y, integer z){
        integer sum = x + y + z;
        return sum;
    }
    // parameter is date
    // return type is boolean 
    public boolean leapYearCheck(date dt){
        integer year = dt.year(); // use built-in method
        boolean lp = date.isLeapYear(year);
        return lp; 

    }
}
