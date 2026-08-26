import 'package:test/test.dart';

import '../16_intersection_two_arrays/16_intersection_two_arrays.dart';

void main() {
  group('IntersectionOfTwoArrays', () {
    late IntersectionOfTwoArrays solution;

    setUp(() {
      solution = IntersectionOfTwoArrays();
    });

    test('deve retornar apenas valores presentes nas duas listas', () {
      final nums1 = [1, 2, 2, 1];
      final nums2 = [2, 2];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {2});
    });

    test('a ordem do resultado nao deve importar', () {
      final nums1 = [4, 9, 5];
      final nums2 = [9, 4, 9, 8, 4];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {4, 9});
    });

    test('listas sem intersecao devem retornar lista vazia', () {
      final nums1 = [1, 2, 3];
      final nums2 = [4, 5, 6];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado, isEmpty);
    });

    test('deve remover duplicados do resultado', () {
      final nums1 = [1, 1, 1, 2, 2];
      final nums2 = [1, 1, 1, 1];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {1});
      expect(resultado.length, 1);
    });

    test('deve funcionar quando todos os valores existem nas duas listas', () {
      final nums1 = [1, 2, 3];
      final nums2 = [3, 2, 1];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {1, 2, 3});
    });

    test('deve funcionar com numeros negativos', () {
      final nums1 = [-1, -2, 3, 4];
      final nums2 = [-2, -1, 5];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {-1, -2});
    });

    test('deve funcionar com zero', () {
      final nums1 = [0, 1, 2];
      final nums2 = [0, 3, 4];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado.toSet(), {0});
    });

    test('primeira lista vazia deve retornar vazio', () {
      final nums1 = <int>[];
      final nums2 = [1, 2, 3];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado, isEmpty);
    });

    test('segunda lista vazia deve retornar vazio', () {
      final nums1 = [1, 2, 3];
      final nums2 = <int>[];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado, isEmpty);
    });

    test('duas listas vazias devem retornar vazio', () {
      final nums1 = <int>[];
      final nums2 = <int>[];

      final resultado = solution.intersection(nums1, nums2);

      expect(resultado, isEmpty);
    });
  });
}