import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandNameWidget extends StatelessWidget {
  const BrandNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            'assets/images/prime_mart_logo.png',
            width: 64,
            height: 64,
          ),
          Text(
            'PrimeMart',
            style: GoogleFonts.bevan(fontSize: 28),
          ),
        ],
      ),
    );
  }
}
