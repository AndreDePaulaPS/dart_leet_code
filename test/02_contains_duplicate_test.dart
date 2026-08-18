import 'package:test/test.dart';

import '../02_contains_duplicate/02_contains_duplicate.dart';

void main() {
  group("Analisa se uma lista possui elementos duplicados", () {
    late ContainsDuplicate containsDuplicate;

    setUp(() {
      containsDuplicate = ContainsDuplicate();
    });

    test("Deve retornar true quando houver elemento repetido no início e fim", () {
      final lista = [1, 2, 3, 1];
      final resultado = containsDuplicate.check(lista);

      expect(resultado, isTrue);
    });

    test("Deve retornar false quando todos os elementos forem únicos", () {
      final lista = [1, 2, 3, 4];
      final resultado = containsDuplicate.check(lista);

      expect(resultado, isFalse);
    });

    test("Deve retornar true para uma lista com múltiplos elementos repetidos", () {
      final lista = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2];
      final resultado = containsDuplicate.check(lista);

      expect(resultado, isTrue);
    });
  });
  }