import 'package:flutter/cupertino.dart';

class CupertinoCurrencyConverter extends StatefulWidget {
  const CupertinoCurrencyConverter({super.key});

  @override
  State<CupertinoCurrencyConverter> createState() => _CupertinoCurrencyConverterState();
}

class _CupertinoCurrencyConverterState extends State<CupertinoCurrencyConverter> {
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
    
    // Scaffold provides the structure for the screen.
    return CupertinoPageScaffold(
      backgroundColor: Color.fromARGB(
          255, 85, 14, 228), // Background color of the entire screen
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
            Text(
              'NPR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}', // Placeholder text for the conversion result
              //'NPR $result' alternative way for result to string during concatenation
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
                  color:
                      CupertinoColors.white, // Text color inside the TextField
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
