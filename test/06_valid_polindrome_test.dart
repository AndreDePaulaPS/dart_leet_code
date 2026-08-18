import 'package:test/test.dart';

import '../06_valid_polindrome/06_valid_polindome.dart';
// Ajuste o import da sua classe.
// import 'package:seu_projeto/valid_palindrome.dart';

void main() {
  group('ValidPalindrome', () {
    late ValidPalindrome solution;

    setUp(() {
      solution = ValidPalindrome();
    });

    test('palindromo com espacos, pontuacao e letras maiusculas', () {
      expect(
        solution.isPalindrome('A man, a plan, a canal: Panama'),
        true,
      );
    });

    test('texto que nao e palindromo', () {
      expect(
        solution.isPalindrome('race a car'),
        false,
      );
    });

    test('apenas espaco deve ser palindromo', () {
      expect(
        solution.isPalindrome(' '),
        true,
      );
    });

    test('palindromo simples', () {
      expect(
        solution.isPalindrome('ovo'),
        true,
      );
    });

    test('palavra que nao e palindromo', () {
      expect(
        solution.isPalindrome('Andre'),
        false,
      );
    });

    test('numero e letra diferentes', () {
      expect(
        solution.isPalindrome('0P'),
        false,
      );
    });

    test('palindromo com quantidade impar de caracteres', () {
      expect(
        solution.isPalindrome('arara'),
        true,
      );
    });

    test('apenas pontuacao deve ser palindromo', () {
      expect(
        solution.isPalindrome('.,'),
        true,
      );
    });

    test('palindromo contendo numeros', () {
      expect(
        solution.isPalindrome('A1b1a'),
        true,
      );
    });

    test('deve ignorar caractere especial e detectar que e palindromo', () {
      expect(
        solution.isPalindrome('ab_a'),
        true,
      );
    });
  });
}