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
  double tempResult = 0.0;

  String tempData = "";

  String resultData = "0.0";

  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(top: 15),
      height: 180,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
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
              CircleAvatar(
                backgroundColor: Colors.blue.shade400,
                child: IconButton(
                  color: Colors.blueGrey.shade200,
                  onPressed: () {
                    setState(() {});
                    resultData = (double.parse(tempData) * widget.convFactors)
                        .toString();
                  },
                  icon: const Icon(
                    Icons.double_arrow_rounded,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  "$resultData ${widget.convString}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Spacer(
                flex: 1,
              ),
              ElevatedButton(
                  onPressed: () {
                    tempResult = double.parse(widget.convString);
                  },
                  child: Text(
                    "Save Length",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  )),
              Spacer(
                flex: 4,
              ),
              ElevatedButton(
                  onPressed: () {
                    inputData.text = "";
                  },
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14),
                  )),
              Spacer(
                flex: 1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
