import 'package:flutter_test/flutter_test.dart';
import 'package:store/config/boiler/util_boiler.dart';

void main() {
  group('IntegerCore test', () {
    test('should return 10.9', () {
      var result = IntegerCore().removeZeroAfterDecimal(10.900);
      expect(result, '10.9');
    });

    test('should return 11.5', () {
      var result = IntegerCore().removeZeroAfterDecimal(11.50);
      expect(result, '11.5');
    });
  });
}
