import 'package:test/test.dart';

import '../15_maximum_subarray/15_maximum_subarray.dart';


void main() {
  group('MaximumSubarray', () {
    late MaximumSubarray solution;

    setUp(() {
      solution = MaximumSubarray();
    });

    test('deve encontrar a maior soma em lista mista', () {
      final nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 6);
    });

    test('lista com apenas um elemento', () {
      final nums = [1];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 1);
    });

    test('todos os valores positivos', () {
      final nums = [5, 4, -1, 7, 8];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 23);
    });

    test('todos os valores negativos', () {
      final nums = [-5, -2, -8];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, -2);
    });

    test('maior soma no inicio da lista', () {
      final nums = [4, 3, -10, 1, 2];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 7);
    });

    test('maior soma no final da lista', () {
      final nums = [-10, -2, 3, 4, 5];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 12);
    });

    test('deve abandonar soma negativa e recomecar', () {
      final nums = [-3, 4, -1, 2];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 5);
    });

    test('deve manter soma atual mesmo passando por valor negativo', () {
      final nums = [5, -2, 3];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 6);
    });

    test('zero pode ser a melhor soma', () {
      final nums = [-3, 0, -2];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 0);
    });

    test('valores alternando positivos e negativos', () {
      final nums = [2, -1, 2, -1, 2];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 4);
    });

    test('deve continuar a soma mesmo quando ela diminui temporariamente', () {
      final nums = [5, -2, 3];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 6);
    });

    test('deve retornar o maior valor quando todos forem negativos', () {
      final nums = [-5, -2, -8];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, -2);
    });

    test('deve abandonar uma soma ruim e recomecar', () {
      final nums = [-3, 4, -1, 2];

      final resultado = solution.maxSubArray(nums);

      expect(resultado, 5);
    });
  });
}