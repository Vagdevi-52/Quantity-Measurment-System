import 'dart:io';

class Volume {
  dynamic volumeMap = {
    1: [1.0, 1000.0, 0.264172],
    2: [0.001, 1.0, 0.000264172],
    3: [3.78541, 3785.41, 1.0]
  };
  void volumeSelected() {
    int choice;
    print('Enter the value');
    double number = double.parse(stdin.readLineSync()!);
    print('***Select Option***');
    print('Press 1 : Liter');
    print('Press 2 : Mililiter');
    print('Press 3 : Gallon');
    print('*************');
    print('Enter your choice');
    choice = int.parse(stdin.readLineSync()!);
    if (choice > 3) {
      print('Enter right choice');
    } else // if condition fails.
    {
      int choiceConvert;
      print('***Select Convert Option***');
      print('Press 1 : Liter');
      print('Press 2 : Mililiter');
      print('Press 3 : Gallon');
      print('************************');
      print('Enter your choice');
      choiceConvert = int.parse(stdin.readLineSync()!);
      if (choiceConvert > 3) {
        print('Enter right choice');
      } else {
        double result = number * volumeMap[choice][choiceConvert - 1];
        print('Result is : $result');
      }
    }
  }

  void VolumeSelected() {}
}
