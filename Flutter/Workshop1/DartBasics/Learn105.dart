 /*
  1. Basics of class
  2. Instance of a class -- object
*/

void main(){

    var p = Person("Raghav",23,0.0,true,["Chintu",'pintu','mintu']);
    print(p._name);
    print(p.runtimeType); //This will give the class name as the instance of the same.
    print(p.getSalaryInUSD());
}


//Below code shows how to create a class in dart and the above main method will show how to use objects made from this class.

class Person{
  String _name; // underscore before the name, implies it is a private variable.
  int age;
  double salary;
  bool isMarried;
  List<String> childrenNames;

  //Below shows the constructors.
  Person(String _name,int age,double salary,bool isMarried,List<String> childrenNames){
    this._name = _name;
    this.age = age;
    this.salary = salary;
    this.isMarried = isMarried;
    this.childrenNames = childrenNames;
  }
  //Other, simple way to do so is, the one line code given below.
  // Person(this._name,this.age,this.salary,this.isMarried,this.childrenNames);

  //Methods for the class.
  int getSalaryInUSD(){
    int amt = 0;

      //Code to convert salary to USD.
    
    return amt;
  }
}