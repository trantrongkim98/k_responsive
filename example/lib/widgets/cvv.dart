import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';

class CVV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.hSafe,
      margin: EdgeInsets.only(
        left: 21.width(max:21),
        right: 17.width(max:21),
      ),
      width: 337.w,
      child: Row(
        children: [
          _left(),
          Spacer(),
          _input(),
        ],
      ),
    );
  }

  Widget _left() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _enterCVV(),
        SizedBox(height: 7.hSafe),
        _cardVerify(),
      ],
    );
  }

  Widget _enterCVV() {
    return Container(
      height:13.hSafe,
      child: Text(
        'Enter CVV',
        style: GoogleFonts.roboto(
          fontSize: 14.fSafe,
          color: Color(0xFF475062),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _cardVerify() {
    return Container(
      height: 12.hSafe,
      child: Text(
        'Card verification value',
        style: GoogleFonts.roboto(
          fontSize: 10.fSafe,
          color: Color(0xFF6E7A90),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _input() {
    return Container(
      height:42.hSafe,
      width: 114.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.hSafe),
        border: Border.all(
          width: 0.5.width(max:0.5),
          color: Color(0xFF596273),
        ),
      ),
    );
  }
}
