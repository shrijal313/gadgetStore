import 'package:day2/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 400,
                  width: double.maxFinite,
                  color: Colors.red,
                ),
                Card(
                  color: Color(0xffedeef1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 2,
                  shadowColor: Colors.grey[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 60,
                            width: 60,
                            color: primaryColorK,
                            padding: EdgeInsets.all(2),
                            child: Image.asset(
                              "assets/images/asuslogo.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Asus Official Store",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: primaryColorK,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              )),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "view store",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                color: primaryColorK,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                              )),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 40,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.all(0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: primaryColorK,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
