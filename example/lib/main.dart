// import 'package:device_preview/device_preview.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k_responsive/k_responsive.dart';
import 'package:k_responsive_example/widgets/card.dart';
import 'package:k_responsive_example/widgets/cvv.dart';
import 'package:k_responsive_example/widgets/note.dart';
import 'package:k_responsive_example/widgets/otp.dart';
import 'package:k_responsive_example/widgets/payment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, child) {
        return KResponsiveBuilder(
          designSize: Size(375, 708),
          responsive: KResponsiveObject(
            tablet: 1024,
            phoneMedium: 480,
            watch: 200,
            phoneSmall: 320,
            phoneLarge: 720,
          ),
          child: Home(),
        );
      },
    );

  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _card(),
            SizedBox(height: 43.hSafe),
            CVV(),
            SizedBox(height: 29.hSafe),
            _line(),
            SizedBox(height: 32.hSafe),
            _option(),
            SizedBox(height: 29.hSafe),
            _buttonOTP(),
            SizedBox(height: 34.hSafe),
            _line(),
            SizedBox(height: 34.heightSafe(max: 34,min:0)),
            Note(),
            SizedBox(height: KAuto().setSafeHeight(49)),
            Payment(),
            SizedBox(
              height: KAuto().setSafeHeight(47, min: 0, max: 47),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _card() {
    return CardCredit(
      width:351.w,
      height: 204.hSafe,
    );
  }

  Widget _line() {
    return Container(
      height: 0.5.hSafe,
      width: 337.w,
      color: Color(0xFFCED2DA),
    );
  }

  Widget _option() {
    return Container(
      width: 337.w,
      height: 17.hSafe,
      alignment: Alignment.centerLeft,
      child: Text(
        'Validated with the following options',
        style: GoogleFonts.roboto(
          fontSize: 14.fSafe,
          color: Color(0xFF475062),
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _buttonOTP() {
    return Container(
      width: 337.w,
      alignment: Alignment.centerLeft,
      child: OTP(),
    );
  }

  Widget responsiveWidget() {
    return KResponsive.widgetBuilder(
      phoneLarge: Container(width: 50, height: 50, color: Colors.yellow),
      phoneMedium: Container(width: 50, height: 50, color: Colors.amber),
      phoneSmall: Container(width: 50, height: 50, color: Colors.cyan),
      tablet: Container(width: 50, height: 50, color: Colors.green),
      watch: Container(width: 50, height: 50, color: Colors.pink),
      web: Container(width: 50, height: 50, color: Colors.blue),
    );
  }
}
