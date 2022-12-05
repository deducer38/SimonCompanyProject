public  class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;
    public static integer countCandidates =0;

    public Candidates(){
        countCandidates++; // her instance olusturdugumuzda otomatik sayiyi artiracak
    }

    public void printCandidate(){
        System.debug('Name is ' + Name);
        System.debug('Gender is ' + Gender);
        System.debug('Company name is ' + CompanyName);
    }

    public static void printCandidateInfo(){
        // we can access only static members inside static method
        System.debug('Company name is ' + CompanyName);
        // we cannot access non static membes from static methods
        //System.debug('Name is ' + Name);

    }
}
