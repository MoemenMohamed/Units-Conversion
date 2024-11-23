import 'custom_conv_class.dart';

class TempCustomConversionUnit extends CustomConversionUnit {
  double factor1;
  double factor2;


  TempCustomConversionUnit(
      {required super.convTitle,
      required super.convUnit,
      required this.factor1,
      required this.factor2,});

  double doConversion(double inputData) {
    return factor1 * inputData + factor2;
  }
}
