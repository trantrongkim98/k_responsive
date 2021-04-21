import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';

class Note extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 333.w,
      height:46.hSafe,
      padding: EdgeInsets.only(right:10.w),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Declaration:',
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: Colors.black,
                fontSize: 10.fSafe,
              ),
            ),
            TextSpan(
                style: GoogleFonts.roboto(
                  color: Color(0xFF596273),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w400,
                  fontSize: 10.fSafe,
                ),
                text:
                    ' scale turnkey outsourcing after multidisciplinary leadership skills. Interactively engineer 24/7 paradigms vis-a-vis cross functional value. Conveniently streamline distinctive bandwidth through vertical imperatives. Progressively drive.'),
          ],
        ),
      ),
    );
  }
}
