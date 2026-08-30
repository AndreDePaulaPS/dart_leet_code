import 'package:test/test.dart';

import '../18_product_except_self/18_product_except_self.dart';

void main() {
  group('ProductExceptSelf', () {
    late ProductExceptSelf solution;

    setUp(() {
      solution = ProductExceptSelf();
    });

    test('deve calcular o produto exceto o próprio elemento', () {
      final nums = [1, 2, 3, 4];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [24, 12, 8, 6]);
    });

    test('deve funcionar com um zero', () {
      final nums = [-1, 1, 0, -3, 3];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [0, 0, 9, 0, 0]);
    });

    test('deve funcionar com dois zeros', () {
      final nums = [1, 0, 3, 0];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [0, 0, 0, 0]);
    });

    test('deve funcionar com números negativos', () {
      final nums = [-1, -2, -3, -4];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [-24, -12, -8, -6]);
    });

    test('deve funcionar com dois elementos', () {
      final nums = [2, 3];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [3, 2]);
    });

    test('deve funcionar quando todos os valores são 1', () {
      final nums = [1, 1, 1, 1];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [1, 1, 1, 1]);
    });

    test('deve funcionar com valores positivos repetidos', () {
      final nums = [2, 2, 2, 2];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [8, 8, 8, 8]);
    });

    test('deve funcionar com zero na primeira posição', () {
      final nums = [0, 2, 3, 4];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [24, 0, 0, 0]);
    });

    test('deve funcionar com zero na última posição', () {
      final nums = [1, 2, 3, 0];

      final resultado = solution.productExceptSelf(nums);

      expect(resultado, [0, 0, 0, 6]);
    });
  });
}