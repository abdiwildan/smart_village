import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:smart_village/Screens/login_screen.dart';
import 'package:smart_village/controllers/regist_controller.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color(0xFF33CC33),
          Colors.lightGreen,
          Colors.greenAccent,
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/Regist.png',
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
                      topRight: Radius.circular(50))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: FadeInUp(
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Text("Create New Account",
                            style: Theme.of(context).textTheme.bodyLarge),
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
                              controller: controller.email,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Email',
                                labelStyle: TextStyle(
                                    color: Color(0xff8c98a3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500
                                ),
                                border: UnderlineInputBorder(),
                              ),
                            )),
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
                              controller: controller.fullName,
                              decoration: const InputDecoration(
                                labelText: 'Enter your Fullname',
                                labelStyle: TextStyle(
                                    color: Color(0xff8c98a3),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                                border: UnderlineInputBorder(),
                              ),
                            )),
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
                            controller: controller.password,
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: 'Enter your Password',
                              labelStyle: TextStyle(
                                  color: Color(0xff8c98a3),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                RegisterController.instance.registerUser(
                                    controller.email.text.trim(),
                                    controller.password.text.trim());
                              }
                            },
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFF33CC33),
                            child: const Center(
                              child: Text(
                                "REGISTER",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        Row(
                          children: [
                            const Text("Already An Account??"),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, LoginScreen.routeName);
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Color(0xFF33CC33),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
