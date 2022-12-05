System.debug('tesla created');
car tesla = new car(); 
tesla.carColor = 'black';
tesla.carName = 'Model S';
tesla.switchOn();
System.debug('tesla car color -> ' + tesla.carColor);
System.debug('tesla ->' + tesla);
tesla.drive();
tesla.driveAtMaxSpeed();
System.debug('tesla is done');

System.debug('bmw created');
car bmw = new car();
bmw.carName = 'M Series';
bmw.carColor = 'white';
bmw.switchOn();
System.debug('bmw car color -> ' + bmw.carColor);
System.debug('bmw -> ' + bmw);
bmw.drive();
bmw.driveAtMaxSpeed();
System.debug('bmw is done ');
// System.debug('bmw maxSpeed is ' + bmw.maxSpeed); This wont work, maxSpeed is private.

System.debug('toyota created');
car toyota = new car();
toyota.switchOn();
toyota.drive();
toyota.driveAtMaxSpeed();
System.debug('toyota is done');

