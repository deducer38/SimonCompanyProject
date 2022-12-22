@isTest // class becomes test class
public class Calculator4Test {
    @isTest // method becomes test method
    public static void testMessage() {
        // we want to test our calculator class's methods
        Calculator4.welcomeMessage();
        // we can call parametrized methods 
        Calculator4.printNewMessage('This is from test class');      
    }
    @isTest
    public static void addTest1() {
        integer i = 10;
        integer j = 15;
        // we are testing add method of Calculator4 class
        integer sum1 = Calculator4.add(i, j);
        // sum1 should be 25
        system.assertEquals(25, sum1);
    }
    @isTest
    public static void addTest2() {
        // we are testing add method of Calculator4 class
        integer sum1 = Calculator4.add(10, 15, 25);
        system.assertEquals(50, sum1);
    }
    
}
