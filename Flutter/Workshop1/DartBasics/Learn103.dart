 void main(){
    final name = "Raghav"; //This cannot be changed later.
    // name = "Rahul" ==> This will give an error, as we declared the variable as final.
    const pi = 3.14; //HOw we declare a constant.
    int x = 10;
    
    //If else in dart
    if(x<5){
      print("x is less than 5");
    }
    else if(x == 5){
      print("x is equal to 5");  
    }
    else{
      print("x is not less than 5");
    }
    print(name);
    print(pi);

    //Case in dart. Switch statement.
    var a = 11;
    switch(a){
      case 1:
        print("x is 1");
        break;
      case 2:
        print("x is 2");
        break;
      // ...
      case 10:
        print("x is 10");
        break;
      default:
        print("x is unknown");
    }

    //Loops in dart!
    // 1. A basic for loop in dart!
   print("FOR");
    for(int i=0;i<10;i++){
      print(i);
    }

    //2. A basic do while loop in dart.
   print("Do while");
    int j = 0;
    do{
      print(j);
      j++;
    }while(j<10);
   
   //3. A basic while loop in dart.
   print("Do while loop");
  int k = 0;
   while(k<10){
     print(k);
     k++;
   }

   //4. For each loop in dart.
   print("For each loop");
   var list1 = [1,2,3,4,5,6,7,8,9,10];
   for (var i in list1){
     print(i);
   }
 }