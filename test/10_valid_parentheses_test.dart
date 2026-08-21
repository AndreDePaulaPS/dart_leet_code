import 'package:test/test.dart';

import '../10_valid_parentheses/10_valid_parentheses.dart';


void main() {
  group('ValidParentheses', () {
    late ValidParentheses solution;

    setUp(() {
      solution = ValidParentheses();
    });

    test('parenteses simples', () {
      expect(solution.isValid('()'), true);
    });

    test('varios tipos separados', () {
      expect(solution.isValid('()[]{}'), true);
    });

    test('tipos diferentes devem retornar false', () {
      expect(solution.isValid('(]'), false);
    });

    test('ordem de fechamento incorreta', () {
      expect(solution.isValid('([)]'), false);
    });

    test('estruturas aninhadas corretamente', () {
      expect(solution.isValid('{[]}'), true);
    });

    test('apenas abertura deve retornar false', () {
      expect(solution.isValid('('), false);
    });

    test('apenas fechamento deve retornar false', () {
      expect(solution.isValid(']'), false);
    });

    test('varios parenteses aninhados', () {
      expect(solution.isValid('((()))'), true);
    });

    test('chaves, colchetes e parenteses aninhados', () {
      expect(solution.isValid('{[()]}'), true);
    });

    test('fechamento em ordem incorreta', () {
      expect(solution.isValid('{[(])}'), false);
    });

    test('faltando fechamento', () {
      expect(solution.isValid('((()'), false);
    });

    test('fechamento sem abertura correspondente', () {
      expect(solution.isValid('())'), false);
    });

    test('sequencia maior valida', () {
      expect(solution.isValid('([]{})'), true);
    });
  });
}