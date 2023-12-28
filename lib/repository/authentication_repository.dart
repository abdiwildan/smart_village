import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:smart_village/Screens/base_screen.dart';
import 'package:smart_village/Screens/login_screen.dart';

import 'authefication_repository/exceptions/regist_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
 static AuthenticationRepository get instance => Get.find();

 final _auth = FirebaseAuth.instance;
 late final Rx<User?> firebaseUser;

 @override
 void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
 }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const BaseScreen());
 }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
        ? Get.offAll(() => const BaseScreen())
        : Get.snackbar('Error', 'Something went wrong.');
    } on FirebaseAuthException catch (e) {
      final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
      Get.snackbar('Notification', ex.message);
    }
  }
 

  Future<void> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
        ? Get.offAll(() => const BaseScreen())
        : Get.snackbar('Error', 'Something went wrong.');
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message ?? 'Something went wrong.');
    }
 }

  Future<void> signOut() async {
    await _auth.signOut();
    Get.offAll(() => const LoginScreen());
  }
}


 // Future<void> createUserWithEmailAndPassword(
  //     String email, String password) async {
  //   try {
  //     await _auth.createUserWithEmailAndPassword(
  //         email: email, password: password);
  //     firebaseUser.value != null
  //         ? Get.offAll(() => BaseScreen.routeName)
  //         : Get.offAll(() => LoginScreen.routeName);
  //   } on FirebaseAuthException catch (e) {
  //     final ex = RegisterWithEmailAndPasswordFailure.code(e.code);
  //     print('FIREBASE AUTH EXCEPTION - ${ex.message}');
  //     throw ex;
  //   } catch (_) {
  //     const ex = RegisterWithEmailAndPasswordFailure();
  //     print('FIREBASE AUTH EXCEPTION - ${ex.message}');
  //     throw ex;
  //   }
  // }