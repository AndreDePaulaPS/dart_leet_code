import 'package:test/test.dart';

import '../08_remove_duplicates/08_remove_duplicates.dart';

// Ajuste o import para seu projeto.
// import 'package:seu_projeto/remove_duplicates.dart';

void main() {
  group('RemoveDuplicates', () {
    late RemoveDuplicates solution;

    setUp(() {
      solution = RemoveDuplicates();
    });

    test('deve remover duplicatas de [1, 1, 2]', () {
      final nums = [1, 1, 2];

      final k = solution.removeDuplicates(nums);

      expect(k, 2);
      expect(nums.sublist(0, k), [1, 2]);
    });

    test('deve remover varias duplicatas', () {
      final nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

      final k = solution.removeDuplicates(nums);

      expect(k, 5);
      expect(nums.sublist(0, k), [0, 1, 2, 3, 4]);
    });

    test('lista com apenas um elemento', () {
      final nums = [1];

      final k = solution.removeDuplicates(nums);

      expect(k, 1);
      expect(nums.sublist(0, k), [1]);
    });

    test('lista sem duplicatas', () {
      final nums = [1, 2, 3, 4];

      final k = solution.removeDuplicates(nums);

      expect(k, 4);
      expect(nums.sublist(0, k), [1, 2, 3, 4]);
    });

    test('lista contendo apenas valores iguais', () {
      final nums = [1, 1, 1, 1];

      final k = solution.removeDuplicates(nums);

      expect(k, 1);
      expect(nums.sublist(0, k), [1]);
    });

    test('deve funcionar com numeros negativos', () {
      final nums = [-2, -2, -1, -1, 0, 0, 1];

      final k = solution.removeDuplicates(nums);

      expect(k, 4);
      expect(nums.sublist(0, k), [-2, -1, 0, 1]);
    });

    test('duplicatas no inicio e no final', () {
      final nums = [1, 1, 2, 3, 4, 4, 4];

      final k = solution.removeDuplicates(nums);

      expect(k, 4);
      expect(nums.sublist(0, k), [1, 2, 3, 4]);
    });
  });
}