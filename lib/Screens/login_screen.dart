import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final controller = Get.put(LoginController());
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
     
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color(0xFF33CC33),
              Colors.lightGreen,
              Colors.greenAccent,
            ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/Login.png',
                  fit: BoxFit.cover,
                  height: 200,
                ),

              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: FadeInUp(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Text(
                            "Login To Your Account",
                            style: Theme.of(context).textTheme.bodyLarge
                          ),
                          
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 10),
                            
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              controller: controller.email,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Password',
                                labelStyle: TextStyle(color: Color(0xff8c98a3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                                border: UnderlineInputBorder(),
                                
                            ),
                            )
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding:
                              const EdgeInsets.only(left: 10),
                            
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: controller.password,
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Password',
                                labelStyle: TextStyle(color: Color(0xff8c98a3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500
                                ),
                                border: UnderlineInputBorder(),
                                
                            ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("forgot Password?"),
                          const SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                            onPressed: () {
                              
                            if (formKey.currentState!.validate()) {
                                LoginController.instance.loginUser(
                                  controller.email.text.trim(),
                                  controller.password.text.trim()
                                );
                              }},
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(18)
                            ),
                            color: const Color(0xFF33CC33),
                            child: const Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              ),
                            )
                          ),
                          Row(
                            children: [
                              const Text("Don't Have Acount??"),
                              TextButton(onPressed: () {
                                Navigator.pushReplacementNamed(context, '/register');
                              }, 
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    color: Color(0xFF33CC33),
                                  ),
                                )
                              )
                            ],
                          )
                                  
                                  
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ),
            
          ],
        ),
      ),
    );
  }
}