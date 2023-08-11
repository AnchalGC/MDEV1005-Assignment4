import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "calculator.dart";
import 'CarbonIntensityScreen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/calculator': (context) => CalculatorScreen(),
        '/CarbonIntensityScreen': (context) => CarbonIntensityScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Anchal Flutter APP",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/tools.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120, // Set the width of the first button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/calculator');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors
                          .orangeAccent, // Set the button color to pale orange
                    ),
                    child: Text("Calculator"),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 120, // Set the width of the second button
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/CarbonIntensityScreen');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .orangeAccent, // Set the button color to pale orange
                    ),
                    child: Text("Carbon Intensity"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
