public  class StringDemoClass {

    public void stringMethod1(){
        String sessionDescription = 'learning string methods in Apex language';
        system.debug(sessionDescription);

        integer lengthOfStr = sessionDescription.length();
        System.debug('length of session description is ' + lengthOfStr);

        string capSessionDescription = sessionDescription.toUppercase();
        System.debug('In CAPS -> ' + capSessionDescription);

        // check if string contains 'apex'
        boolean apexContains = sessionDescription.contains('Apex');
        System.debug('contains Apex ?? ' + apexContains);

        // ignore case version 
        boolean apexContains2 = sessionDescription.containsIgnoreCase('apex');
        System.debug('contains apex ignore case?? ' + apexContains2);

        boolean salesforceContains = sessionDescription.contains('salesforce');
        System.debug('contains SF?? ' + salesforceContains);

        /*
        string rating = '   Hot    ';
        rating = rating.trim();
        */
        

    }
    
}
