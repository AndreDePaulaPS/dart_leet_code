import 'package:test/test.dart';

import '../14_single_number/14_single_number.dart';

void main() {
  group('SingleNumber', () {
    late SingleNumber solution;

    setUp(() {
      solution = SingleNumber();
    });

    test('deve encontrar o unico elemento no final', () {
      final nums = [2, 2, 1];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 1);
    });

    test('deve encontrar o unico elemento no inicio', () {
      final nums = [4, 1, 2, 1, 2];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 4);
    });

    test('lista contendo apenas um elemento', () {
      final nums = [1];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 1);
    });

    test('deve encontrar elemento unico com varios pares', () {
      final nums = [7, 3, 5, 3, 5];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 7);
    });

    test('deve funcionar com numeros negativos', () {
      final nums = [-1, -1, -2];

      final resultado = solution.singleNumber(nums);

      expect(resultado, -2);
    });

    test('elemento unico pode estar no meio', () {
      final nums = [4, 1, 8, 1, 4];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 8);
    });

    test('deve funcionar com zero como elemento unico', () {
      final nums = [2, 1, 2, 0, 1];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 0);
    });

    test('deve funcionar quando zero faz parte de um par', () {
      final nums = [0, 5, 0];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 5);
    });

    test('deve funcionar com varios pares fora de ordem', () {
      final nums = [10, 4, 7, 10, 8, 7, 4];

      final resultado = solution.singleNumber(nums);

      expect(resultado, 8);
    });
  });
}