public  class Car {
    // public class variable
    public String carColor = '';
    // public String carColor; is also possible. the vale will be null.
    public string carName = '';
    private integer maxSpeed = 150;
    // integer maxSpeed = 150; this withour access modifier is also private

    public void switchOn(){
        Datetime switchOnTime = Datetime.now();
        system.debug('starting the car');
    }
    public void drive(){
        System.debug('driving ' + carName + ' of color' + carColor);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving' + carName + ' at speed ' +maxSpeed + 'km/hour';
        System.debug(drivingDescription);
    }

}

