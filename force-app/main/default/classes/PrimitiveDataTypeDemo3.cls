public  class PrimitiveDataTypeDemo3 {
    // we can have same name method in two separate classes
    public void printNewDateTime(){
        // new datetime using year month day hour minute second  
        datetime dt3 = datetime.newInstance(2021, 4, 15, 9, 5, 40); // user's timezone
        System.debug('dt3 is ' + dt3);

        Datetime dt4_1 = datetime.newInstance(0);
        System.debug('dt4_1 is ' + dt4_1);

        Long longTime = 1265582842728L; // miliseconds from 1970 Jan 1 000000000.
        Datetime dt4 = Datetime.newInstance(longTime);
        System.debug('dt4 is ' + dt4);

        datetime dt6 = datetime.now(); //current time but in GMT
        System.debug('dt6 current date time is ' + dt6);

        //create GMT datetime using year month day hour minute second
        datetime dt5 = Datetime.newInstanceGmt(1980, 1, 5, 13, 10, 10);
        System.debug('dt5 is ' + dt5);

    }
}
