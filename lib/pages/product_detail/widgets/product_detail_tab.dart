import 'dart:math';

import 'package:day2/core/constants.dart';
import 'package:day2/core/widgets/point_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailTab extends StatelessWidget {
  const ProductDetailTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 600,
      child: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            TabBar(
              labelColor: primaryColorK,
              labelStyle: GoogleFonts.poppins(
                color: primaryColorK,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
              indicatorPadding: EdgeInsets.symmetric(vertical: 10),
              unselectedLabelStyle: GoogleFonts.poppins(
                color: primaryColorK,
                fontSize: 14,
              ),
              indicatorColor: primaryColorK,
              indicator: PointTabIndicator(),
              labelPadding: EdgeInsets.all(0),
              tabs: [
                Tab(
                  text: "Overview",
                ),
                Tab(
                  text: "Specification",
                ),
                Tab(
                  text: "Review",
                ),
              ],
            ),
            Container(
              height: 100,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TabBarView(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Text(
                          "Be the first to review this product NPR410,000.00 **Price is inclusive of VAT** Qty 1 ADD TO CART Asus ROG Strix Scar 15 2021 G533WS Gaming Laptop with 5000-series AMD Ryzen 9 5900HS processor (Octa-core CPU), NVIDIA RTX 3080 graphics card with 8GB of GDDR6 VRAM, 16GB DDR4 RAM (Expandable), 1TB M.2 NVMe PCIe 3.0 SSD Storage, 15.6-inch IPS display, Full-HD (1920 x 1080 pixels) resolution, 100% sRGB Color Gamut, 75% Adobe RGB Color Coverage, 300Hz Refresh Rate with Adaptive-Sync, 3ms response time, Optical Mech Keyboard with Per-Key RGB, 90WHr Battery, Comes with two years warranty and Free Asus ROG Original Gaming Backpack and Gaming Mouse",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        Transform.rotate(
                          angle: pi * -.5,
                          child: IconButton(
                              splashRadius: 1,
                              icon: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    color: Colors.green,
                  ),
                  Container(
                    width: 60,
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
