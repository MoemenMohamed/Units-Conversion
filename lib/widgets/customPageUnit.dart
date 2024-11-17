import 'package:flutter/material.dart';

class UnitConversion extends StatefulWidget {
  final String convTitles;
  final double convFactors;
  final String convString;

  const UnitConversion(
      {super.key,
      required this.convTitles,
      required this.convFactors,
      required this.convString});

  @override
  State<UnitConversion> createState() => _UnitConversionState();
}

class _UnitConversionState extends State<UnitConversion> {
  String tempData = "";

  String resultData = "0.0";

  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(top: 15),
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.blue.shade400,
      ),
      child: Column(
        children: [
          Text(
            widget.convTitles,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80,
                child: TextField(
                  controller: inputData,
                  onChanged: (value) {
                    tempData = value;
                  },
                  //enabled: false,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                ),
              ),
              MaterialButton(
                color: Colors.blueGrey.shade200,
                onPressed: () {
                  setState(() {});
                  resultData =
                      (double.parse(tempData) * widget.convFactors).toString();
                },
                child: const Icon(Icons.double_arrow_rounded),
              ),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  resultData,
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                widget.convString,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
              //TextField(controller: outputData,),
            ],
          ),
          TextButton(
              onPressed: () {
                inputData.text = "";
              },
              child: Text(
                "Clear",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18),
              ))
        ],
      ),
    );
  }
}
