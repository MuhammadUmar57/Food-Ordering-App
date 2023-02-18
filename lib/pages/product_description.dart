// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_app/utils/products.dart';

class ProductDescription extends StatelessWidget {
  final String p_name;
  final String p_note;
  final String p_image;

  //final color;

  const ProductDescription({
    super.key,
    required this.p_name,
    required this.p_note,
    required this.p_image,
    //required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 300.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    // color: Colors.blue[100],
                  ),
                  child: Image.asset(
                    p_image,
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(
                p_name,
                style: GoogleFonts.lato(
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
              child: Text(
                "A $p_name is a so tasty food. I like it so much. burger has some good specialities and some bad.\n" +
                    " Good specialities are this that it contain salad like tomato,cucumber,onion etc.\n"
                        " It is so big food that we are so hungry and if we eat it than our stomach will fill so much.",
                style: GoogleFonts.lato(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Spacer(),
            Center(
              child: FloatingActionButton.large(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 50.0,
                  color: Colors.white,
                ),
                elevation: 30.0,
                backgroundColor: Colors.red,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
