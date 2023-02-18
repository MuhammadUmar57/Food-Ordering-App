// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, camel_case_types, prefer_interpolation_to_compose_strings

import 'package:e_app/pages/home.dart';
import 'package:e_app/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController emailValue = TextEditingController();
  TextEditingController passwordValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Colors.red,
              Color(0xff64cdfd),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: CircleAvatar(
                      maxRadius: 70.0,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/images/account.png",
                        height: 90.0,
                        // color: Colors.blueAccent,
                        width: 80.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(
                    height: 70.0,
                  ),

                  // Creating Textfields for email and password..
                  //

                  //

                  //
                  //Textfield for email...

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, bottom: 10.0),
                    child: TextField(
                      controller: emailValue,
                      decoration: InputDecoration(
                        hintText: "@gmail.com",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  // Textfield for password..
                  //
                  //
                  //

                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: TextField(
                      controller: passwordValue,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 80.0,
                  ),
                  // Next button..
                  //
                  //
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // dont have account text will move you to the signup page..
                      //
                      //
                      //
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (((context) => SignUp()))));
                        },
                        child: Text(
                          "Don't have Account?",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // for Login.....
                      //
                      //
                      //
                      //
                      GestureDetector(
                        onTap: () {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailValue.text,
                                  password: passwordValue.text)
                              .then((value) {
                            print("You are loged In");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (((context) => HomeScreen()))));
                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });
                        },
                        child: Container(
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            color: Colors.black,
                          ),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 50.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
