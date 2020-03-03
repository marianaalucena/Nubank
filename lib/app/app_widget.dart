import 'package:flutter/material.dart';
import 'package:nubank_academy/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank Academy',
      theme: ThemeData(
        primaryColor: Color(0xFF84269C),
        canvasColor: Color(0xFF84269C),
        cardColor: Color(0xFF9241a7), //Colors.white54
        dividerColor: Color(0xFFF6F7F6),
        //  primarySwatch: Colors.blue,
      ),
      home: HomeModule(),
    );
  }
}
