import 'package:test/test.dart';

import '../04_majority_element/04_majority_element.dart';

// Ajuste este import para o caminho onde está sua implementação.
// Exemplo:
// import 'package:seu_projeto/majority_element.dart';

void main() {
  group('MajorityElement', () {
    late MajorityElement solution;

    setUp(() {
      solution = MajorityElement();
    });

    test('deve retornar 3 para [3, 2, 3]', () {
      final nums = [3, 2, 3];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 3);
    });

    test('deve retornar 2 para [2, 2, 1, 1, 1, 2, 2]', () {
      final nums = [2, 2, 1, 1, 1, 2, 2];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 2);
    });

    test('deve funcionar com apenas um elemento', () {
      final nums = [10];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 10);
    });

    test('deve encontrar maioria concentrada no inicio', () {
      final nums = [5, 5, 5, 5, 2, 3, 4];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 5);
    });

    test('deve encontrar maioria concentrada no final', () {
      final nums = [1, 2, 7, 7, 7, 7, 7];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 7);
    });

    test('deve funcionar com numeros negativos', () {
      final nums = [-1, -1, 2, -1, 3, -1, -1];

      final resultado = solution.majorityElement(nums);

      expect(resultado, -1);
    });

    test('deve funcionar quando zero for o majority element', () {
      final nums = [0, 0, 1, 0, 2, 0, 0];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 0);
    });

    test('deve funcionar com uma lista maior', () {
      final nums = [
        9, 1, 9, 2, 9,
        3, 9, 4, 9, 9,
        9,
      ];

      final resultado = solution.majorityElement(nums);

      expect(resultado, 9);
    });
  });
}
