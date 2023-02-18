// ignore_for_file: prefer_const_constructors,, unused_import, non_constant_identifier_names
// prefer_const_literals_to_create_immutables,
// avoid_unnecessary_containers, unused_import,
// non_constant_identifier_names

import 'package:e_app/pages/home.dart';
import 'package:e_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email_value = TextEditingController();
  TextEditingController pass_value = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
          colors: [
            Color(0xff0c82df),
            Color(0xff64cdfd),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 50.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 40.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Name",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),

                  // textfield for email..
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 40.0),
                    child: TextField(
                      controller: email_value,
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  // textfield for password...
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 40.0),
                    child: TextField(
                      controller: pass_value,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        filled: true,
                        fillColor: Colors.white,
                        hintStyle: TextStyle(),
                        prefixIcon: Icon(
                          Icons.password,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),

                  // submit button..
                  //
                  //
                  //
                  Padding(
                    padding: const EdgeInsets.only(left: 270.0),
                    child: GestureDetector(
                      onTap: () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: email_value.text,
                                password: pass_value.text)
                            .then((value) {
                          print("Account has been Created ");
                        }).then((value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const loginScreen()),
                          );
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
                  ),
                  SizedBox(
                    height: 70.0,
                  ),

                  Row(children: [
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        color: Colors.black,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((((context) => loginScreen())))));
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 50.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
