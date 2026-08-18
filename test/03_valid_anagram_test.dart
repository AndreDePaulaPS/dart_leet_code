import 'package:test/test.dart';

import '../03_valid_anagram/03_valid_anagram.dart'; // Ajuste o caminho do seu arquivo de código

void main() {
  group("Valida se duas palavras são anagramas", () {
    late ValidAnagram validAnagram;

    setUp(() {
      validAnagram = ValidAnagram();
    });

    test("Deve retornar true para palavras que são anagramas", () {
      final resultado = validAnagram.isAnagram("anagram", "nagaram");
      expect(resultado, isTrue);
    });

    test("Deve retornar false para palavras com letras diferentes", () {
      final resultado = validAnagram.isAnagram("rat", "car");
      expect(resultado, isFalse);
    });

    test("Deve retornar false para palavras de tamanhos diferentes", () {
      final resultado = validAnagram.isAnagram("a", "ab");
      expect(resultado, isFalse);
    });
  });
}