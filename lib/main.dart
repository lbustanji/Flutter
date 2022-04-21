import 'package:flutter/material.dart';
import 'package:flutter_responsive/desktop.dart';
import 'package:flutter_responsive/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (
          BuildContext context,
          BoxConstraints constraints,
        ) {
          // print(MediaQuery.of(context).size.width.toInt());
          if (MediaQuery.of(context).size.width <= 560) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaleFactor: 0.7,
              ),
              child: MobileScreen(),
            );
          }
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: DesktopScreen(),
          );
        },
      ),
    );
  }
}
