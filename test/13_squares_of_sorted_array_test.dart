import 'package:test/test.dart';

import '../13_squares_of_sorted_array/13_squares_of_sorted_array.dart';

// Ajuste o import para o caminho da sua implementação.
// import 'package:seu_projeto/squares_of_sorted_array.dart';

void main() {
  group('SquaresOfSortedArray', () {
    late SquaresOfSortedArray solution;

    setUp(() {
      solution = SquaresOfSortedArray();
    });

    test('deve retornar quadrados ordenados com negativos e positivos', () {
      final nums = [-4, -1, 0, 3, 10];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [0, 1, 9, 16, 100]);
    });

    test('deve funcionar com valores negativos e positivos', () {
      final nums = [-7, -3, 2, 3, 11];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [4, 9, 9, 49, 121]);
    });

    test('lista com apenas zero', () {
      final nums = [0];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [0]);
    });

    test('lista com apenas numero negativo', () {
      final nums = [-1];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [1]);
    });

    test('lista contendo apenas numeros positivos', () {
      final nums = [1, 2, 3, 4];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [1, 4, 9, 16]);
    });

    test('lista contendo apenas numeros negativos', () {
      final nums = [-5, -3, -2, -1];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [1, 4, 9, 25]);
    });

    test('deve funcionar quando os extremos possuem mesmo quadrado', () {
      final nums = [-5, -2, 0, 2, 5];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [0, 4, 4, 25, 25]);
    });

    test('deve funcionar com valores repetidos', () {
      final nums = [-3, -3, 0, 2, 2];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [0, 4, 4, 9, 9]);
    });

    test('deve funcionar com lista vazia', () {
      final nums = <int>[];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, <int>[]);
    });

    test('maior quadrado deve vir do lado esquerdo', () {
      final nums = [-10, -2, 1, 3];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [1, 4, 9, 100]);
    });

    test('maior quadrado deve vir do lado direito', () {
      final nums = [-3, -1, 2, 10];

      final resultado = solution.sortedSquares(nums);

      expect(resultado, [1, 4, 9, 100]);
    });
  });
}