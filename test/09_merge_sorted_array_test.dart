import 'package:test/test.dart';

import '../09_merge_sorted_array/09_merge_sorted_array.dart';


void main() {
  group('MergeSortedArray', () {
    late MergeSortedArray solution;

    setUp(() {
      solution = MergeSortedArray();
    });

    test('deve mesclar duas listas ordenadas', () {
      final nums1 = [1, 2, 3, 0, 0, 0];
      final nums2 = [2, 5, 6];

      solution.merge(nums1, 3, nums2, 3);

      expect(nums1, [1, 2, 2, 3, 5, 6]);
    });

    test('nums2 vazia deve manter nums1 igual', () {
      final nums1 = [1];
      final nums2 = <int>[];

      solution.merge(nums1, 1, nums2, 0);

      expect(nums1, [1]);
    });

    test('nums1 sem elementos validos deve receber nums2', () {
      final nums1 = [0];
      final nums2 = [1];

      solution.merge(nums1, 0, nums2, 1);

      expect(nums1, [1]);
    });

    test('nums2 possui valores menores que nums1', () {
      final nums1 = [4, 5, 6, 0, 0, 0];
      final nums2 = [1, 2, 3];

      solution.merge(nums1, 3, nums2, 3);

      expect(nums1, [1, 2, 3, 4, 5, 6]);
    });

    test('nums2 possui valores maiores que nums1', () {
      final nums1 = [1, 2, 3, 0, 0, 0];
      final nums2 = [4, 5, 6];

      solution.merge(nums1, 3, nums2, 3);

      expect(nums1, [1, 2, 3, 4, 5, 6]);
    });

    test('deve inserir um valor no meio de nums1', () {
      final nums1 = [1, 2, 4, 5, 6, 0];
      final nums2 = [3];

      solution.merge(nums1, 5, nums2, 1);

      expect(nums1, [1, 2, 3, 4, 5, 6]);
    });

    test('deve funcionar com valores repetidos', () {
      final nums1 = [1, 2, 2, 0, 0, 0];
      final nums2 = [2, 2, 3];

      solution.merge(nums1, 3, nums2, 3);

      expect(nums1, [1, 2, 2, 2, 2, 3]);
    });

    test('deve funcionar com numeros negativos', () {
      final nums1 = [-3, -1, 0, 0, 0];
      final nums2 = [-2, 2, 4];

      solution.merge(nums1, 2, nums2, 3);

      expect(nums1, [-3, -2, -1, 2, 4]);
    });

    test('nums1 com apenas espaco reservado', () {
      final nums1 = [0, 0, 0];
      final nums2 = [1, 2, 3];

      solution.merge(nums1, 0, nums2, 3);

      expect(nums1, [1, 2, 3]);
    });
  });
}