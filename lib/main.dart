import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/material_currency_converter.dart';
import 'package:my_app/cupertino_currency_converter.dart';
void main() {
  runApp(const MyCupertinoApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurrencyConverter(),
    );
  }
}

// cupertino app design
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoCurrencyConverter(),
    );
  }
}