import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_village/repository/authentication_repository.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  RxBool isLoading = false.obs;


  //
  void loginUser(String email, String password) {
    AuthenticationRepository.instance
        .signInWithEmailAndPassword(email, password);
  }
}