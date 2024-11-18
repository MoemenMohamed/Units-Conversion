import 'package:flutter/material.dart';
import 'package:p_test/extras.dart';
import 'package:p_test/screens/pressure_conversion.dart';
import 'package:p_test/widgets/customPageUnit.dart';

import 'about_us.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Units Conversion",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          DropdownButton<String>(
            hint: const Text(
              "Quantity",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            iconEnabledColor: Colors.black,
            items: <String>['Length', 'Temperature', 'Pressure', "About Us"]
                .map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            onChanged: (_selectedData) {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                if (_selectedData == "Pressure") {
                  return PressureConv();
                }
                return AboutUs();
              }));
            },
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            color: Colors.blue.shade400,
            height: 10,
            width: 200,
          );
        },
        itemBuilder: (context, index) {
          return UnitConversion(
            convFactors: convData[index].convFactor,
            convTitles: convData[index].convTitle,
            convString: convData[index].convString,
          );
        },
        itemCount: convData.length,
      ),
    );
  }
}
