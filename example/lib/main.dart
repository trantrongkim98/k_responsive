import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';
void main(){
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx,child)=>Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: context.responsive(
            phoneLarge: 64,
            phoneMedium: 48,
            phoneSmall: 32,
            tablet: 128,
            watch: 24,
            web: 160
          ),
          width: context.responsive(
            web: 512,
            watch: 24,
            tablet: 200,
            phoneSmall: 64,
            phoneMedium: 64,
            phoneLarge: 64,
          ),
          color: Colors.red,
        ),
      ),
    );
  }
}

