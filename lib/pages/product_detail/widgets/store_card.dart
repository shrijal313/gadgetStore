import 'package:day2/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffedeef1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
    );
  }
}
