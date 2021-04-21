import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.hSafe,
      width: 219.w,
      decoration: BoxDecoration(
        color: Color(0xFF475062),
        borderRadius: BorderRadius.circular(5.hSafe),
      ),
      alignment: Alignment.center,
      child: Text(
        'Processed for Payment',
        style: GoogleFonts.roboto(
          fontSize: 14.fSafe,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
