import 'package:flutter/material.dart';

import 'about_us.dart';

import 'length_conversion.dart';
import 'temperature_conversion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              "Let's \nConvert ...",
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LengthConversion();
                }));
              },
              style: ElevatedButton.styleFrom(minimumSize: Size(220, 90)),
              child: Text(
                "Length",
                style: TextStyle(fontSize: 25, color: Colors.green.shade900),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
                onPressed: null,
                child: Text("Pressure",
                    style: TextStyle(fontSize: 25, color: Colors.red.shade900)),
                style: ElevatedButton.styleFrom(minimumSize: Size(220, 90))),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TemperatureConversion();
                }));
              },
              style: ElevatedButton.styleFrom(minimumSize: Size(220, 90)),
              child: Text("Temperature",
                  style: TextStyle(fontSize: 25, color: Colors.blue.shade900)),
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(minimumSize: Size(220, 90)),
              child: Text("Speed",
                  style:
                      TextStyle(fontSize: 25, color: Colors.orange.shade900)),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      )),
    );
  }
}
