// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_app/pages/login.dart';
import 'package:e_app/utils/products.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_app/utils/products.dart';

import 'payment.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60.0,
          backgroundColor: Colors.purple.shade200,
          color: Colors.purple.shade400,
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.payment,
              color: Colors.white,
            ),
          ],
          onTap: (index) {
            print(index);

            if (index == 0) {
              print("You have pressed Home Button");
            } else {
              print("You have Pressed Payment Method");
              /* setState(() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (((context) => PaymentScreen()))));
              });
              */
            }
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) {
                  print("Signed Out");
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const loginScreen()),
                  );
                });
              },
              icon: Icon(
                Icons.power_settings_new,
                color: Colors.black,
                size: 30.0,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
          ],
          leading: Text(""),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                child: Text(
                  "Welcome",
                  style: GoogleFonts.lato(
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, top: 20.0, bottom: 20.0),
                child: Text(
                  "Feeling Hungry? ",
                  style: GoogleFonts.lato(
                    fontSize: 45.0,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Divider(
                  thickness: 1.0,
                ),
              ),

              // Items..
              //
              //
              //

              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Products(
                        product_Name: "Burger",
                        product_price: "10.00",
                        product_image: "assets/images/burger.png",
                        colors: Colors.red[100],
                        price_color: Colors.red,
                      ),
                      Products(
                        product_Name: "Pizza",
                        product_price: "15.00",
                        product_image: "assets/images/pizza.png",
                        colors: Colors.yellow[100],
                        price_color: Colors.amber,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Products(
                        product_Name: "Fries",
                        product_price: "4.00",
                        product_image: "assets/images/french-fries.png",
                        colors: Colors.grey[100],
                        price_color: Colors.grey,
                      ),
                      Products(
                        product_Name: "Spaguetti",
                        product_price: "15.00",
                        product_image: "assets/images/spaguetti.png",
                        colors: Colors.blue[100],
                        price_color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Products(
                        product_Name: "Wrap",
                        product_price: "6.00",
                        product_image: "assets/images/wrap.png",
                        colors: Colors.brown[100],
                        price_color: Colors.brown,
                      ),
                      Products(
                        product_Name: "Ice Cream",
                        product_price: "5.00",
                        product_image: "assets/images/ice-cream.png",
                        colors: Colors.green[100],
                        price_color: Colors.green,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                    height: 20.0,
                  ),
                  Row(
                    children: <Widget>[
                      Products(
                        product_Name: "Margritta",
                        product_price: "7.00",
                        product_image: "assets/images/drink.png",
                        colors: Colors.pink[100],
                        price_color: Colors.pink,
                      ),
                      Products(
                        product_Name: "Tea",
                        product_price: "2.00",
                        product_image: "assets/images/tea.png",
                        colors: Colors.limeAccent[100],
                        price_color: Colors.lime,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
