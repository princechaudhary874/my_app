// Import the necessary package for Flutter Cupertino
import 'package:flutter/cupertino.dart';

// Define a Flutter widget for the CupertinoCurrencyConverter
class CupertinoCurrencyConverter extends StatefulWidget {
  // Constructor for CupertinoCurrencyConverter
  const CupertinoCurrencyConverter({super.key});

  // Override createState to create the state for the widget
  @override
  State<CupertinoCurrencyConverter> createState() => _CupertinoCurrencyConverterState();
}

// Define the state class for CupertinoCurrencyConverter
class _CupertinoCurrencyConverterState extends State<CupertinoCurrencyConverter> {
  // Variable to store the conversion result
  double result = 0;

  // Create a TextEditingController for handling input text
  final TextEditingController textEditingController = TextEditingController();

  // Function to convert currency
  void convert() {
    // Check if the input is a valid number
    if (double.tryParse(textEditingController.text) != null) {
      setState(() {
        result = double.parse(textEditingController.text) * 135;
      });
    } else {
      // Handle the case where the input is not a valid number
      // You may show a snackbar or dialog to inform the user.
    }
  }

  // Build method to create the UI for the widget
  @override
  Widget build(BuildContext context) {
    print('rebuilt');  // Debugging print statement

    // Scaffold provides the structure for the screen.
    return CupertinoPageScaffold(
      backgroundColor: Color.fromARGB(
        255, 85, 14, 228
      ), // Background color of the entire screen
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black, // App bar background color
        middle: const Text(
          'Currency😊Converter', // Title of the app bar
          style: TextStyle(
            color: Color.fromRGBO(0, 255, 255, 1), // Title text color
          ),
        ),
        // Action widgets show on the right
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add some padding or spacing between elements for better visual aesthetics
            Text(
              'NPR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', // Placeholder text for the conversion result
              style: const TextStyle(
                fontSize: 50, // Font size for the text
                fontWeight: FontWeight.bold, // Bold font weight
                color: Color.fromRGBO(255, 255, 255, 1), // Text color
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CupertinoTextField(
                controller: textEditingController,
                style: TextStyle(
                  color: CupertinoColors.white, // Text color inside the TextField
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Enter your currency in USD',
                prefix: Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: Text('Convert'), // Text displayed inside the button
              ),
            )
          ],
        ),
      ),
    );
  }
}
