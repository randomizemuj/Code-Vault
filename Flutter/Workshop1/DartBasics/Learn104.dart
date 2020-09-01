void main(){
  randomFacts(); //This will call the randomFacts() function and do whatever is there inside it.
  String x = name();
  print(x);

  //Return type explanation.
  double piVal = piValFunc();
  print(piVal);

  //Passing a list.
  mobileDetails(['Camera','sensor','touchpad','proximitySensor'],12000.00);
  mobileDetails1(items:['screen','touchpad','random1','random2'], price:13000.00);
}

double piValFunc(){
  return 3.14;
}
void randomFacts(){

  print("Sequoia capital invested in olacabs");
  print("Peter theil is the founder of paypal");
  print("Google's parent company is alphabet");
}

String name(){
  return "DSC";
}

//We specify the generics here.
void mobileDetails(List<String> items,double price){
  for (var item in items){
    print(item);
  }

  print('The price is $price');
}

//The above function can take the parameters also as..
void mobileDetails1({List<String> items,double price}){
    for (var item in items){
    print(item);
  }

  print('The price is $price');
  
}