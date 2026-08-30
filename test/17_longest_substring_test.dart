import 'package:test/test.dart';

import '../17_longest_substring/17_longest_substring.dart';


void main() {
  group('LongestSubstring', () {
    late LongestSubstring solution;

    setUp(() {
      solution = LongestSubstring();
    });

    test('deve encontrar maior substring sem repeticao', () {
      final s = 'abcabcbb';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });

    test('string com apenas um caractere repetido varias vezes', () {
      final s = 'bbbbb';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 1);
    });

    test('deve funcionar quando repeticao acontece no meio', () {
      final s = 'pwwkew';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });

    test('string vazia deve retornar zero', () {
      final s = '';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 0);
    });

    test('string com apenas um caractere', () {
      final s = 'a';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 1);
    });

    test('string sem caracteres repetidos', () {
      final s = 'abcdef';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 6);
    });

    test('deve remover apenas o necessario da janela', () {
      final s = 'abcb';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });

    test('repeticao do primeiro caractere no final', () {
      final s = 'abca';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });

    test('deve funcionar com espacos', () {
      final s = 'a b c a';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });

    test('deve funcionar com numeros e letras', () {
      final s = 'a1b2c3a';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 6);
    });

    test('deve funcionar com repeticoes consecutivas e distantes', () {
      final s = 'dvdf';

      final resultado = solution.lengthOfLongestSubstring(s);

      expect(resultado, 3);
    });
  });
}