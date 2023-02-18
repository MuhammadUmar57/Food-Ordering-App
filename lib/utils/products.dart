// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_constructors, unnecessary_string_interpolations, unused_import, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/product_description.dart';

class Products extends StatelessWidget {
  final String product_Name;
  final String product_price;

  final String product_image;
  final price_color;
  final colors;

  List cartProducts = [];

  Products({
    super.key,
    required this.product_Name,
    required this.product_price,
    required this.product_image,
    required this.price_color,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 170.0,
        height: 170.0,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Center(
                child: Image.asset(
                  product_image,
                  height: 70.0,
                  width: 70.0,
                ),
              ),
            ),

            // Product Name..

            Center(
              child: Text(
                "$product_Name",
                style: GoogleFonts.lato(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Product Price...

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    print("You Have Pressed the $product_Name");
                    cartProducts.add("$product_price");
                    print(cartProducts);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((((context) => ProductDescription(
                                  p_name: product_Name,
                                  p_note: "kusdkfuhshaishfuahskh",
                                  p_image: product_image,
                                ))))));
                  },
                  child: Container(
                    height: 30.0,
                    width: 90.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      color: price_color,
                    ),
                    child: Center(
                      child: Text(
                        "\$" + "$product_price",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
