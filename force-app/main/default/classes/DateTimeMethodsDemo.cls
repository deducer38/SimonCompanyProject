public  class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        // todays date
        date today = date.today();

        // my birthday
        date bday = date.newInstance(1950, 01, 01);

        // calculate months difference between two dates
        integer ageInMonths = bday.monthsBetween(today);
        System.debug('My age in months is ' + ageInMonths);

    }
    public void calculateAgeInDays(){
        date today = date.today();
        date bday = date.newInstance(1980, 01, 05);

        //age in days
        integer ageInDays = bday.daysBetween(today);
        System.debug('I am ' +  ageInDays + ' days old');


    }
    public void printSubscriptionEndDate(){

        /*
        https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_date.htm#apex_System_Date_addDays
        */

        // add certain number of days to a date
        date subscriptionStartDate = date.today();
        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        System.debug('Subscription end date is ' + subscriptionEndDate);

        // calculate year of a date
        integer endDateYear = subscriptionEndDate.year();
        System.debug('Subscription end date year is ' + endDateYear);

        // calculate month of a date
        integer endDateMonth = subscriptionEndDate.month();
        System.debug('Subscription end date month is ' + endDateMonth);
    }
    public void printOfferEndDateTime(){
        Datetime dtnow = Datetime.now();
        Datetime dtOfferEnd = dtnow.addHours(51);
        System.debug('The offer end date and time ' + dtOfferEnd);

        date dateOfferEnd = dtOfferEnd.date();
        System.debug('date of offer end is ' + dateOfferEnd);
    }

    public void birthdateToMiliseconds(){
        datetime birthDate = Datetime.newInstance(1980, 01, 05, 01, 01, 01);
        long longBirthdate = birthDate.getTime();
        System.debug('My birthdate in miliseconds is ' + longBirthdate);
    }
}
