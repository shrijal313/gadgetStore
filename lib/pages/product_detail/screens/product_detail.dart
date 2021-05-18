import 'dart:async';
import 'dart:math';

import 'package:day2/core/constants.dart';
import 'package:day2/core/widgets/point_indicator.dart';
import 'package:day2/pages/product_detail/widgets/product_detail_tab.dart';
import 'package:day2/pages/product_detail/widgets/store_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xfff1f2f4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 15)),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Ask Seller",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: Color(0xff32005a),
                                fontWeight: FontWeight.w600,
                              )),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.chat_bubble_outline_outlined,
                              color: primaryColorK,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "ProArt Studiobook",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                        color: primaryColorK,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Type: Pro 17 W700",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: primaryColorK,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.grey,
                          child: Image.asset(
                            "assets/images/asus2.jpg",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blue,
                          ))
                    ],
                  ),
                ),
                StoreCard(),
                SizedBox(
                  height: 20,
                ),
                ProductDetailTab(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price"),
                          Text(
                            "\$2338.1",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: primaryColorK,
                              fontSize: 28,
                            )),
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: primaryColorK,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              elevation: 0,
                              padding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 45)),
                          onPressed: () {},
                          child: Text(
                            "Add to Cart",
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
