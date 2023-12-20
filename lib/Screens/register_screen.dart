import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import 'package:smart_village/Screens/base_screen.dart';
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
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: const Color(0xFF33CC33),
      ),
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
                    key: _formKey,
                    child: Column(
                      children: [
                        Text("Create New Account",
                            style: Theme.of(context).textTheme.bodyLarge),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              controller: controller.email,
                              decoration: InputDecoration(
                                  hintText: "Email ",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black45),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: TextFormField(
                              controller: controller.fullName,
                              decoration: InputDecoration(
                                  hintText: "FullName",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextFormField(
                            controller: controller.password,
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black45),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextFormField(
                            controller: controller.phoneNo,
                            decoration: InputDecoration(
                                hintText: "Phone No",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
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
                              if (_formKey.currentState!.validate()) {
                                RegisterController.instance.registerUser(
                                    controller.email.text.trim(),
                                    controller.password.text.trim());
                              Navigator.pushNamed(
                                  context, BaseScreen.routeName);
                              }
                            },
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            color: const Color(0xFF33CC33),
                            child: const Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        Row(
                          children: [
                            const Text("Don't Have Acount??"),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Register",
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
