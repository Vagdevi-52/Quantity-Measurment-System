import 'dart:io';

class Length {
  dynamic measureMap = {
    1: [1.0, 1000.0, 100000.0, 1000000.0],
    2: [0.001, 1.0, 100.0, 1000.0],
    3: [0.00001, 0.01, 1.0, 10],
    4: [0.000001, 0.001, 0.1, 1.0]
  };
  void lengthSelected() //method for calculating the length.
  {
    int choice;
    print('Enter the value');
    double number = double.parse(stdin.readLineSync()!);
    print('***Select Option***');
    print('hit 1 : Kilometer');
    print('hit 2 : Meter');
    print('hit 3 : Centimeter');
    print('hit 4 : Milimeter');
    print('*******************************');
    print('Enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    if (choice > 4) //if condition
    {
      print(' please Enter  the correct choice');
    } else //if condition is false.
    {
      int choiceConvert;
      print('***Select Convert Option***');
      print('hit 1 : Kilometer');
      print('hit 2 : Meter');
      print('hit 3 : Centimeter');
      print('hit 4 : Milimeter');
      print('*****************************');
      print('Enter your choice');
      choiceConvert = int.parse(stdin.readLineSync()!);
      if (choiceConvert > 4) {
        print('Enter correct choice');
      } else {
        double result = number * measureMap[choice][choiceConvert - 1];
        print('Result is : $result');
      }
    }
  }
}
