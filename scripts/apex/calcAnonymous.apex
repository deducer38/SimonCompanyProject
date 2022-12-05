Calculator calc = new Calculator();
Date date1 = date.newInstance(2020, 6, 22);
boolean date1Leap = calc.leapYearCheck(date1);
System.debug(date1 + 'is leap year? ' + date1Leap);


integer addInteger = calc.add(10, 15);
System.debug('sum is ' + addInteger);

integer sum2 = calc.add(77, 66);
integer x = 14;
integer z = 55;
integer sum3 = calc.add(x, z);
System.debug('sum2 is ' + sum2);
System.debug('sum3 is ' + sum3);

system.debug('triple sum is ' + calc.add(5, 6, 7));




Calculator c2 = new Calculator();
string returnC2 = c2.printAndReturnMessage('print this asap');
System.debug(returnC2);


Calculator c1 = new Calculator();
c1.welcomeMessage();
//1.
string message = 'print this message';
c1.printNewMessage(message);

//2.
c1.printNewMessage('now print this');

/* this wont work
integer msg = 3;
c1.printNewMessage(msg) because of data type */