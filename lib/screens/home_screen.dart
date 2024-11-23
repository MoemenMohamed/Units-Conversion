import 'package:flutter/material.dart';

import 'about_us.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Placeholder();
                    }));
                  },
                  child: Text("Length"),
                  style: ElevatedButton.styleFrom(minimumSize: Size(130, 45)),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Placeholder();
                      }));
                    },
                    child: Text("Pressure"),
                    style: ElevatedButton.styleFrom(minimumSize: Size(130, 45)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TemperatureConversion();
                      }));
                    },
                    child: const Text("Temperature"),
                    style:
                        ElevatedButton.styleFrom(minimumSize: Size(130, 45))),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(minimumSize: Size(130, 45)),
                    child: const Text("Speed"),
                    )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      )),
    );
  }
}
