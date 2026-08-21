import 'package:test/test.dart';

import '../11_binary_search/11_binary_search.dart';

// Ajuste o import para o caminho da sua implementação.
// import 'package:seu_projeto/binary_search.dart';

void main() {
  group('BinarySearch', () {
    late BinarySearch solution;

    setUp(() {
      solution = BinarySearch();
    });

    test('deve encontrar elemento no meio da lista', () {
      final nums = [-1, 0, 3, 5, 9, 12];

      final resultado = solution.search(nums, 5);

      expect(resultado, 3);
    });

    test('deve encontrar elemento no final da lista', () {
      final nums = [-1, 0, 3, 5, 9, 12];

      final resultado = solution.search(nums, 12);

      expect(resultado, 5);
    });

    test('deve encontrar elemento no inicio da lista', () {
      final nums = [-1, 0, 3, 5, 9, 12];

      final resultado = solution.search(nums, -1);

      expect(resultado, 0);
    });

    test('deve retornar -1 quando elemento nao existir', () {
      final nums = [-1, 0, 3, 5, 9, 12];

      final resultado = solution.search(nums, 2);

      expect(resultado, -1);
    });

    test('lista com apenas um elemento existente', () {
      final nums = [5];

      final resultado = solution.search(nums, 5);

      expect(resultado, 0);
    });

    test('lista com apenas um elemento diferente do target', () {
      final nums = [5];

      final resultado = solution.search(nums, 3);

      expect(resultado, -1);
    });

    test('deve encontrar elemento em lista com quantidade impar', () {
      final nums = [1, 2, 3, 4, 5, 6, 7];

      final resultado = solution.search(nums, 6);

      expect(resultado, 5);
    });

    test('deve encontrar elemento em lista com quantidade par', () {
      final nums = [1, 2, 3, 4, 5, 6];

      final resultado = solution.search(nums, 4);

      expect(resultado, 3);
    });

    test('deve funcionar com numeros negativos', () {
      final nums = [-10, -5, -2, 0, 3, 8];

      final resultado = solution.search(nums, -5);

      expect(resultado, 1);
    });

    test('lista vazia deve retornar -1', () {
      final nums = <int>[];

      final resultado = solution.search(nums, 10);

      expect(resultado, -1);
    });
  });
}