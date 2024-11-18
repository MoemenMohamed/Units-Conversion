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

class ConversionDataPressure {
  String convTitleP;
  double convFactorP;
  String convStringP;

  ConversionDataPressure(
      {required this.convTitleP,
      required this.convFactorP,
      required this.convStringP});
}

List<ConversionDataPressure> convPressureData = [
  ConversionDataPressure(convTitleP: "pascal to bar", convFactorP: 0.00001, convStringP: "bar"),
  ConversionDataPressure(convTitleP: "bar to pascal", convFactorP: 100000, convStringP: "pa"),
  ConversionDataPressure(convTitleP: "bar to atm", convFactorP: 0.986923, convStringP: "atm"),
];
