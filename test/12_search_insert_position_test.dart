import 'package:test/test.dart';

import '../12_search_insert_position/12_search_insert_position.dart';

void main() {
  group('SearchInsertPosition', () {
    late SearchInsertPosition solution;

    setUp(() {
      solution = SearchInsertPosition();
    });

    test('deve retornar o indice quando target existe', () {
      final nums = [1, 3, 5, 6];

      final resultado = solution.searchInsert(nums, 5);

      expect(resultado, 2);
    });

    test('deve retornar a posicao de insercao no meio', () {
      final nums = [1, 3, 5, 6];

      final resultado = solution.searchInsert(nums, 2);

      expect(resultado, 1);
    });

    test('deve retornar a posicao no final', () {
      final nums = [1, 3, 5, 6];

      final resultado = solution.searchInsert(nums, 7);

      expect(resultado, 4);
    });

    test('deve retornar a posicao no inicio', () {
      final nums = [1, 3, 5, 6];

      final resultado = solution.searchInsert(nums, 0);

      expect(resultado, 0);
    });

    test('lista com um elemento e target existente', () {
      final nums = [1];

      final resultado = solution.searchInsert(nums, 1);

      expect(resultado, 0);
    });

    test('lista com um elemento e target maior', () {
      final nums = [1];

      final resultado = solution.searchInsert(nums, 2);

      expect(resultado, 1);
    });

    test('lista com um elemento e target menor', () {
      final nums = [5];

      final resultado = solution.searchInsert(nums, 2);

      expect(resultado, 0);
    });

    test('deve funcionar com numeros negativos', () {
      final nums = [-10, -5, 0, 3, 8];

      final resultado = solution.searchInsert(nums, -3);

      expect(resultado, 2);
    });

    test('target entre dois valores no fim da lista', () {
      final nums = [1, 3, 5, 10];

      final resultado = solution.searchInsert(nums, 7);

      expect(resultado, 3);
    });

    test('target entre dois valores no inicio da lista', () {
      final nums = [2, 5, 8, 10];

      final resultado = solution.searchInsert(nums, 3);

      expect(resultado, 1);
    });
  });
}