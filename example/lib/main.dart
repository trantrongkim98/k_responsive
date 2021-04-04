// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:k_responsive/k_responsive.dart';

void main() {
  runApp(MyApp());
  // runApp(
  //   DevicePreview(
  //     enabled: false,
  //     builder: (ctx) {
  //       return MyApp();
  //     },
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context), // Add the locale here

      builder: (ctx, child) {
        return Home();

        /// The context don't change when update device at here
        /// so we have move to Home widget
        // return DevicePreview.appBuilder(ctx, Home());
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
    KResponsive.ins.setValue(context: context);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    KResponsive.ins.setValue(
      context: context,
      phoneLarge: 720,
      phoneMedium: 480,
      phoneSmall: 320,
      tablet: 1024,
      watch: 200,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: KResponsive.responsive(
                  phoneLarge: 64.0,
                  phoneMedium: 48.0,
                  phoneSmall: 32.0,
                  tablet: 500.0,
                  watch: 24.0,
                  web: 160.0),
              width: context.responsive(
                web: 512,
                watch: 24.0,
                tablet: 500.0,
                phoneSmall: 64.0,
                phoneMedium: 64,
                phoneLarge: 64.0,
              ),
              color: Colors.red,
            ),
            responsiveWidget(),
          ],
        ),
      ),
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
