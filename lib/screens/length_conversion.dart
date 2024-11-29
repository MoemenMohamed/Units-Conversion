import 'package:flutter/material.dart';

import '../extras.dart';

class LengthConversion extends StatefulWidget {
  const LengthConversion({super.key});

  @override
  State<LengthConversion> createState() => _LengthConversionState();
}

class _LengthConversionState extends State<LengthConversion> {
  List<String> inputText = ["0", "0", "0","0"];
  List<String> outputText = ["0", "0", "0","0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Length Conversion",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ExpansionTile(
                title: Text(
                  lengthTiles[index].convTitle,
                  style: TextStyle(fontSize: 18, color: Colors.green.shade600),
                ),
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            child: TextField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder()),
                              onChanged: (data) {
                                inputText[index] = data;
                              },
                            ),
                          ),
                          const Icon(
                            Icons.double_arrow_outlined,
                            color: Colors.green,
                          ),
                          Container(
                              width: 120,
                              child: Text(
                                "${outputText[index]} ${lengthTiles[index].convUnit}",
                                style: const TextStyle(fontSize: 18),
                              )),
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
                                outputText[index] = lengthTiles[index]
                                    .doConversion(
                                        double.parse(inputText[index]))
                                    .toStringAsExponential(2);
                              },
                              child: const Text(
                                "Convert",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
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
                                style: TextStyle(
                                    fontSize: 20, color: Colors.green),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ]);
          },
          separatorBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 10,
              color: Colors.green.shade200,
            );
          },
          itemCount: lengthTiles.length),
    );
  }
}
