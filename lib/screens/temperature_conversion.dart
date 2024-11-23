import 'package:flutter/material.dart';

import '../extras.dart';

class TemperatureConversion extends StatefulWidget {
  const TemperatureConversion({super.key});

  @override
  State<TemperatureConversion> createState() => _TemperatureConversionState();
}

class _TemperatureConversionState extends State<TemperatureConversion> {
  List<String> inputText = ["0", "0", "0"];
  List<String> outputText = ["0", "0", "0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Temperature Conversion",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue.shade800),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    tempTiles[index].convTitle,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 100,
                        child: TextField(
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                          onChanged: (data) {
                            inputText[index] = data;
                          },
                        ),
                      ),
                      const Icon(Icons.double_arrow_outlined),
                      Container(
                          width: 70,
                          child: Text(
                              "${outputText[index]} ${tempTiles[index].convUnit}")),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 50)),
                          onPressed: () {
                            setState(() {});
                            outputText[index] = tempTiles[index]
                                .doConversion(double.parse(inputText[index]))
                                .toString();
                          },
                          child: const Text(
                            "Convert",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(80, 50)),
                          onPressed: () {
                            setState(() {});
                            outputText[index] = "0";
                          },
                          child: const Text(
                            "Clear",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 10,
              color: Colors.blue.shade200,
            );
          },
          itemCount: tempTiles.length),
    );
  }
}
