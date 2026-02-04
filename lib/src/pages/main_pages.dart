import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controllers/main_controller.dart';

class MainPages extends StatelessWidget {
  final controller = Get.put(MainController());
  MainPages({super.key});
  // var controller = Get.put(MainController());

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simple State
            GetBuilder(
            init: MainController(),
              builder: (val) {
                return Text(
                  "Count: ${val.myNum}",
                );
              },
            ),
            // Reactive State
            // Obx(()=>
            //   Text("Count Number : ${controller.number}"),
            // ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
              HapticFeedback.lightImpact();
              // controller.addNumber();
              controller.countNumberSimpleState();
              }, child: Text("Click here to Add number")
            ),
            ElevatedButton(
              onPressed: (){
              HapticFeedback.lightImpact();
              controller.minusNumber();
            },
            child: Text("Click here to Minus number")
            ),
          ],
        ),
      )
    );
  }
}