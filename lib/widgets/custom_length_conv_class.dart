import 'custom_conv_class.dart';

class LengthCustomConversionUnit extends CustomConversionUnit {
  double factor1;
  double inputData;

  LengthCustomConversionUnit(
      {required super.convTitle,
        required super.convUnit,
        required this.factor1,
        required this.inputData});

  double doConversion() {
    return factor1 * inputData;
  }
}