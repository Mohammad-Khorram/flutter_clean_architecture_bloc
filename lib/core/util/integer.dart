class IntegerCore {
  String removeZeroAfterDecimal(double value){
    return value.toString().replaceAll(RegExp(r'([.]*0)(?!.*\d)'), '');
  }
}