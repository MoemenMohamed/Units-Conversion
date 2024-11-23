import 'custom_conv_class.dart';

class LengthCustomConversionUnit extends CustomConversionUnit {
  double factor1;

  LengthCustomConversionUnit({
    required super.convTitle,
    required super.convUnit,
    required this.factor1,
  });

  double doConversion(double inputData) {
    return factor1 * inputData;
  }
}
