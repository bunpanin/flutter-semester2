import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class UserController  extends GetxController{
  final formKey = GlobalKey<FormState>();

  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPhone = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;
  void register(){
    isLoading.value = true;
    

  }


}