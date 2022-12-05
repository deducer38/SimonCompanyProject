public  class Cat {
    public string name;
    public string color;

   
    public Cat() {
        System.debug(' Cat constructor called automatically.');

    }
    

    public Cat(string n, string clr){
        name = n;
        color = clr;
        sleeping();
    }

    public void sleeping(){
        System.debug(name + ' is kinda sleeping');
    }
}
