import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: Color(0xFF33CC33),
      ),
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
              padding: EdgeInsets.all(20),
              
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
                    topRight: Radius.circular(50)
                  )
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: FadeInUp(
                    child: Column(
                      children: [
                        Text(
                          "Create New Account",
                          style: Theme.of(context).textTheme.bodyLarge
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Email ",
                              hintStyle: TextStyle(
                                    color: Colors.grey
                                ),
                              border: InputBorder.none
                            ),
                          )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Username",
                              hintStyle: TextStyle(
                                    color: Colors.grey
                                ),
                              border: InputBorder.none
                            ),
                          )
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                            const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),  
                          child: TextField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey
                                ),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding:
                            const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                          ),  
                          child: TextField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Ketik Ulang Password",
                                hintStyle: TextStyle(
                                    color: Colors.grey
                                ),
                                border: InputBorder.none
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("forgot Password?"),
                        SizedBox(
                          height: 10,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          minWidth: double.infinity,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(18)
                          ),
                          color: Color(0xFF33CC33),
                          child: Center(
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
                            Text("Don't Have Acount??"),
                            TextButton(onPressed: () {}, 
                              child: Text(
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
              )
            ),
            
          ],
        ),
      ),
    );
  }
}