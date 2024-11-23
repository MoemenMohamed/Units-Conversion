import 'widgets/custom_length_conv_class.dart';
import 'widgets/custom_temp_conv_class.dart';

List<TempCustomConversionUnit> tempTiles = [
TempCustomConversionUnit(convTitle: "Celsius to Kelvin",convUnit: "k",factor1:1,factor2: 273.15 ),
TempCustomConversionUnit(convTitle: "Celsius to Fahrenheit",convUnit: "F",factor1:9/5,factor2: 32 ),
TempCustomConversionUnit(convTitle: "Kelvin to Celsius",convUnit: "C",factor1:1,factor2: -273.15 ),
];

List<LengthCustomConversionUnit> lengthTiles = [
  LengthCustomConversionUnit(convTitle: "Meter to Cm",convUnit: "cm",factor1:100),
  LengthCustomConversionUnit(convTitle: "Meter to mm",convUnit: "mm",factor1:1000),
  LengthCustomConversionUnit(convTitle: "Meter to microMeter",convUnit: "um",factor1:1000000),
];
