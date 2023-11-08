// Importing material design library from Flutter
import 'package:flutter/material.dart';

// CurrencyConverter is a stateless widget, meaning it does not hold any state.
class CurrencyConverter extends StatelessWidget {
  // Constructor with a key parameter.
  const CurrencyConverter({super.key});

  @override
  // Building the widget tree for the currency converter.
  Widget build(BuildContext context) {
    // Defining a custom border style for input fields.
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
        // action widgets 
        actions: [Text('hi')],
      ),
      body: Center(
        // Center widget to center the column on screen
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // Aligning children to the center of the column
          children: [
            Text(
              "0", // Placeholder text for the conversion result
              style: TextStyle(
                fontSize: 50, // Font size for the text
                fontWeight: FontWeight.bold, // Bold font weight
                color: Color.fromRGBO(255, 255, 255, 1), // Text color
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.all(5.0), // Padding around the TextField
              child: TextField(
                style: TextStyle(
                  color: Colors.white, // Text color inside the TextField
                ),
                decoration: InputDecoration(
                  hintText:
                      'Enter your currency in USD', // Placeholder text for the TextField
                  hintStyle: TextStyle(
                      color: Colors.white60), // Style for the hint text
                  prefixIcon: Icon(Icons
                      .monetization_on), // Icon displayed at the beginning of the TextField
                  prefixIconColor: Colors.white, // Color for the prefix icon
                  filled: true, // Background color fill for the TextField
                  fillColor: Colors.black, // Background color set to black
                  // Border styles for different TextField states
                  focusedBorder:
                      border, // Border style when the TextField is in focus
                  enabledBorder:
                      border, // Border style when the TextField is enabled
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true, // Enable decimal input
                  signed: true, // Enable signed numbers
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.all(5.0), // Padding around the TextButton
              child: TextButton(
                onPressed: () {
                  // Placeholder function for the button press action
                  print(
                      'Button Clicked Successfully'); // Console log for a successful button click
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Colors.black), // Background color of the button
                  foregroundColor: MaterialStatePropertyAll(
                      Colors.white), // Text color of the button
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ), // Minimum size of the button
                ),
                child: Text('Button' // Text displayed inside the button
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
