// Importing material design library from Flutter
import 'package:flutter/material.dart';

// Stateful widgets
class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;

  // Create a TextEditingController for handling input text
  final TextEditingController textEditingController = TextEditingController();
// function to convert currency
  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 135;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebuilt');

    // Define a custom border style for input fields.
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white, // Border color set to white
        width: 1.5, // Border width
        strokeAlign: BorderSide.strokeAlignOutside, // Align the stroke outside
      ),
      borderRadius:
          BorderRadius.circular(20), // Rounded corners with a radius of 20
    );

    // Scaffold provides the structure for the screen.
    return Scaffold(
      backgroundColor: Color.fromARGB(
          255, 85, 14, 228), // Background color of the entire screen
      appBar: AppBar(
        backgroundColor: Colors.black, // App bar background color
        title: const Text(
          'Currency😊Converter', // Title of the app bar
          style: TextStyle(
            color: Color.fromRGBO(0, 255, 255, 1), // Title text color
          ),
        ),
        centerTitle: true,
        actions: [Text('🥳')], // Action widgets show on the right
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NPR ${result.toString()}', // Placeholder text for the conversion result
              //'NPR $result' alternative way for result to string during concatenation
              style: const TextStyle(
                fontSize: 50, // Font size for the text
                fontWeight: FontWeight.bold, // Bold font weight
                color: Color.fromRGBO(255, 255, 255, 1), // Text color
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: Colors.white, // Text color inside the TextField
                ),
                decoration: InputDecoration(
                  hintText: 'Enter your currency in USD',
                  hintStyle: TextStyle(color: Colors.white60),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.white,
                  filled: true,
                  fillColor: Colors.black,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextButton(
                onPressed: convert,
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  minimumSize: MaterialStateProperty.all(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text('Convert'), // Text displayed inside the button
              ),
            )
          ],
        ),
      ),
    );
  }
}
