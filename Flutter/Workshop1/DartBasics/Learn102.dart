void main(){

  var s = "1";
  print(s.runtimeType);

  int x = int.parse(s);
  print(x.runtimeType);

  double a = 90.2343444;
  String z = a.toStringAsFixed(2);
  print(z);

  String name = "Raghav Maheshwari ";
  print(name.toUpperCase());
  print(name.toLowerCase());
  print(name.trim());
  print(name.split(" "));
  print(name.substring(0,5));

  String fname = "raghav";
  String lname = "child";
  print(fname+lname);
  print("My name is "+fname);
  print("My name is $fname $lname");
  }