import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';

class OTP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.hSafe,
      width: 197.w,
      decoration: BoxDecoration(
        color: Color(0xFF5EC4FF),
        borderRadius: BorderRadius.circular(5.hSafe),
      ),
      alignment: Alignment.center,
      child: Text(
        'OTP (one time password)',
        style: GoogleFonts.roboto(
          fontSize: 14.fSafe,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}
