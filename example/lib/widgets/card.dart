
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';

class CardCredit extends StatelessWidget {
  final double? height;
  final double? width;

  const CardCredit({
    Key? key,
    this.height,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 7.hSafe),
      width: width,
      height: height,
      child: CustomPaint(
        painter: CardPainter(),
        child: _content(),
      ),
    );
  }

  Widget _content() {
    return Container(
      padding: EdgeInsets.only(
          left: 30.width(max:30) , right: 30.width(max:30) ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 55.hSafe),
          _cardNumberTitle(),
          SizedBox(height: 4.heightSafe(max:4)),
          _cardNumber(),
          SizedBox(height: 16.hSafe),
          _cardInfo(),
        ],
      ),
    );
  }

  Widget _cardNumberTitle() {
    return Container(
      height: 16.hSafe,
      child: Text(
        'Card Number',
        style: GoogleFonts.roboto(
            fontSize: 13.fSafe,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Colors.white.withOpacity(0.52)),
      ),
    );
  }

  Widget _cardNumber() {
    return Container(
      height: 30.hSafe,
      width: 243.w,
      child: Text(
        'xxxx  xxxx  xxxx  5689',
        style: GoogleFonts.roboto(
          fontSize: 25.fSafe,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _cardInfo() {
    return Row(
      children: [
        _info(),
        Spacer(),
        _validate(),
      ],
    );
  }

  Widget _info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardHolderNameTitle(),
        SizedBox(height: 5.heightSafe(max:5)),
        _cardHolderName(),
      ],
    );
  }

  Widget _cardHolderNameTitle() {
    return Container(
      height: 16.hSafe,
      child: Text(
        'Card Holder Number',
        style: GoogleFonts.roboto(
            fontSize: 13.fSafe,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Colors.white.withOpacity(0.52)),
      ),
    );
  }

  Widget _cardHolderName() {
    return Container(
      height: 24.hSafe,
      child: Text(
        'Best Responsive',
        style: GoogleFonts.roboto(
          fontSize: 20.fSafe,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _validate() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _cardValidateTitle(),
        SizedBox(height: 5.hSafe),
        _cardValidate(),
      ],
    );
  }

  Widget _cardValidateTitle() {
    return Container(
      height: 16.hSafe,
      child: Text(
        'Valid upto',
        style: GoogleFonts.roboto(
            fontSize: 13.fSafe,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            color: Colors.white.withOpacity(0.52)),
      ),
    );
  }

  Widget _cardValidate() {
    return Container(
      height: 18.hSafe,
      child: Text(
        '02/2025',
        style: GoogleFonts.roboto(
          fontSize: 15.fSafe,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}

class CardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double radius = 9.0;
    final paint = Paint()
      ..isAntiAlias = true
      ..color = Color(0xFFF66A8C);

    final path = Path()
      ..moveTo(radius, 0)
      ..lineTo(size.width - radius, 0)
      ..cubicTo(size.width - radius, 0, size.width, 0, size.width, radius)
      ..lineTo(size.width, size.height - radius)
      ..cubicTo(size.width, size.height - radius, size.width, size.height,
          size.width - radius, size.height)
      ..lineTo(radius, size.height)
      ..cubicTo(radius, size.height, 0, size.height, 0, size.height - 9)
      ..lineTo(0, radius)
      ..cubicTo(0, radius, 0, 0, radius, 0)
      ..close();
    canvas.drawPath(path, paint);

    /// logo credit card
    canvas.save();
    final rectLogo = Rect.fromLTWH(
      size.width - 57.w,
      11.hSafe,
      57.w,
      33.hSafe,
    );
    final RRect rRect = RRect.fromRectAndRadius(rectLogo, Radius.zero);
    canvas.clipRRect(rRect);

    canvas.drawCircle(
      rectLogo.center.translate( -8.width(max:8,min:-1), 0),
      16.hSafe,
      paint..color = Colors.white,
    );
    canvas.drawCircle(
      rectLogo.center.translate(8.width(min:-8,max:8), 0),
      16.hSafe,
      paint..color = Colors.yellow,
    );
    // canvas.drawRect(rectLogo, paint);
    canvas.restore();

    /// bottom background
    canvas.save();
    final rectBottomBg = Rect.fromLTWH(
        0,
        size.height - 125.hSafe,
        size.width,
        125.hSafe);
    canvas.clipRRect(RRect.fromRectAndRadius(rectBottomBg, Radius.zero));
    final pathBg = Path()
      ..moveTo(0, rectBottomBg.bottom - 20)
      ..cubicTo(0, rectBottomBg.bottom - 20, 3 * size.width / 4,
          rectBottomBg.bottom - 30, rectBottomBg.right, rectBottomBg.top)
      ..lineTo(rectBottomBg.right, rectBottomBg.bottom - radius)
      ..cubicTo(
          rectBottomBg.right,
          rectBottomBg.bottom - radius,
          rectBottomBg.right,
          rectBottomBg.bottom,
          rectBottomBg.right - radius,
          rectBottomBg.bottom)
      ..lineTo(radius, rectBottomBg.bottom)
      ..cubicTo(radius, rectBottomBg.bottom, 0, rectBottomBg.bottom, 0,
          rectBottomBg.bottom - radius)
      ..lineTo(0, rectBottomBg.bottom - 20);
    canvas.drawPath(pathBg, paint..color = Color(0xFFF2547A));
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
