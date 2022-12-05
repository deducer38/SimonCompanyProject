public  class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        System.debug('Create new date instance');

        Date newDate = Date.newInstance(1995, 2, 2);
        System.debug('new date is ' + newDate);

        Date newDate2 = Date.newInstance(2022,11,11);
        System.debug('new date2 is ' + newDate2);

        Date todayDate = Date.today();
        System.debug('Today\'s date is ' + todayDate);

        System.debug(Date.today());
    }
    public void printNewTime(){
        Time myTime = Time.newInstance(18, 30, 38, 50);
        Time meTime = Time.newInstance(12, 34, 48, 60);

        System.debug('my time is ' + myTime + ' and meTime is ' + meTime);
    }
    public void printNewDateTime(){
        Date newDate = Date.today();
        Time newTime = time.newInstance(1, 1, 15, 55);

        // Create DateTime using a Date and a Time
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        System.debug('dt1 is' + dt1);

        // Create new DateTime using Year, Month, Day
        datetime dt2 = datetime.newInstance(2000, 5, 16);
        System.debug('dt2 is' + dt2); // prints in GMT
    }
}
