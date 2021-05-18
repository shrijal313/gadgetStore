import 'package:day2/pages/product_detail/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff32005a),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      home: ProductDetail(),
    );
  }
}
