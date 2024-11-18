import 'package:flutter/material.dart';
import 'package:p_test/extras.dart';
import 'package:p_test/widgets/customPageUnit.dart';

class PressureConv extends StatelessWidget {
  const PressureConv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pressure Conversion"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            color: Colors.blue.shade400,
            height: 20,
            width: 200,
          );
        },
        itemBuilder: (context, index) {
          return UnitConversion(
            convFactors: convPressureData[index].convFactorP,
            convTitles: convPressureData[index].convTitleP,
            convString: convPressureData[index].convStringP,
          );
        },
        itemCount: convPressureData.length,
      ),
    );
  }
}
