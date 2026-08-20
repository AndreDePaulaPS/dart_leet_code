import 'package:test/test.dart';

import '../07_move_zeros/07_move_zeros.dart';

// Ajuste para o caminho da sua classe.
// import 'package:seu_projeto/move_zeroes.dart';

void main() {
  group('MoveZeroes', () {
    late MoveZeroes solution;

    setUp(() {
      solution = MoveZeroes();
    });

    test('deve mover os zeros para o final', () {
      final nums = [0, 1, 0, 3, 12];

      solution.moveZeroes(nums);

      expect(nums, [1, 3, 12, 0, 0]);
    });

    test('lista contendo apenas um zero', () {
      final nums = [0];

      solution.moveZeroes(nums);

      expect(nums, [0]);
    });

    test('lista contendo apenas um valor diferente de zero', () {
      final nums = [1];

      solution.moveZeroes(nums);

      expect(nums, [1]);
    });

    test('deve mover dois zeros iniciais para o final', () {
      final nums = [0, 0, 1];

      solution.moveZeroes(nums);

      expect(nums, [1, 0, 0]);
    });

    test('deve mover varios zeros intercalados', () {
      final nums = [1, 0, 2, 0, 3, 0];

      solution.moveZeroes(nums);

      expect(nums, [1, 2, 3, 0, 0, 0]);
    });

    test('lista sem zeros deve permanecer igual', () {
      final nums = [1, 2, 3];

      solution.moveZeroes(nums);

      expect(nums, [1, 2, 3]);
    });

    test('lista contendo apenas zeros deve permanecer igual', () {
      final nums = [0, 0, 0];

      solution.moveZeroes(nums);

      expect(nums, [0, 0, 0]);
    });

    test('zero apenas no inicio', () {
      final nums = [0, 1, 2, 3];

      solution.moveZeroes(nums);

      expect(nums, [1, 2, 3, 0]);
    });

    test('zero apenas no final', () {
      final nums = [1, 2, 3, 0];

      solution.moveZeroes(nums);

      expect(nums, [1, 2, 3, 0]);
    });

    test('deve manter a ordem dos elementos diferentes de zero', () {
      final nums = [0, 5, 0, 1, 0, 8, 3];

      solution.moveZeroes(nums);

      expect(nums, [5, 1, 8, 3, 0, 0, 0]);
    });
  });
}