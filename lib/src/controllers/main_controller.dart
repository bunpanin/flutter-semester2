import 'package:get/get.dart';

class MainController extends GetxController{
  var number = 0.obs;
  var myString = "".obs;
  var myList = [].obs;


  void addNumber(){
    number.value += 1;
  }

  void minusNumber(){
    number.value -=1;
  }

  // Simple State
  int myNum = 0;
  void countNumberSimpleState(){
    myNum +=1;
    update();
    print("Work Here");
  }
}