import 'package:flutter/material.dart';
import 'package:p_test/widgets/customPageUnit.dart';

void main() {
  runApp(AppPage());
}

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            "Units Conversion",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          actions: [
            DropdownButton<String>(
              hint: Text(
                "Quantity",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              iconEnabledColor: Colors.black,
              items: <String>['Length', 'Speed', 'Weight', 'Pressure']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.blue.shade700,
              height: 20,
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
      ),
    );
  }
}

class ConversionData {
  String convTitle;
  double convFactor;
  String convString;

  ConversionData(
      {required this.convTitle,
      required this.convFactor,
      required this.convString});
}

List<ConversionData> convData = [
  ConversionData(
      convTitle: "meter to centimeters", convFactor: 100, convString: "cm"),
  ConversionData(
      convTitle: "meter to millimeters", convFactor: 1000, convString: "mm"),
  ConversionData(
      convTitle: "centimeter to meters", convFactor: 0.01, convString: "m"),
  ConversionData(
      convTitle: "millimeter to meters", convFactor: 0.001, convString: "m"),
  ConversionData(
      convTitle: "meters to micrometers", convFactor: 1000000, convString: "um")
];
