/*
Dada uma String contendo apenas os caracteres:

( ) { } [ ]

determine se os parênteses, colchetes e chaves estão corretamente balanceados.

Uma sequência é válida quando:

1. Todo símbolo de abertura possui um símbolo de fechamento correspondente.
2. Os símbolos são fechados na ordem correta.
3. Um símbolo de fechamento deve corresponder ao tipo de abertura mais recente.

Exemplos:

"()"       → true
"()[]{}"   → true
"(]"       → false
"([)]"     → false
"{[]}"     → true
*/

class ValidParentheses {
  bool isValid(String s) {
    final pilha = <String>[];
    if (s.length < 1) return false;

    for(var i = 0; i < s.length; i++){
      

      if(s[i] == ")" && (pilha.isNotEmpty && pilha.last == "(")){
        pilha.removeLast();
        continue;
      }
      if(s[i] == "]" && (pilha.isNotEmpty && pilha.last == "[")){
        pilha.removeLast();
        continue;
      }
      if(s[i] == "}" && (pilha.isNotEmpty && pilha.last == "{")){
        pilha.removeLast();
        continue;
      }
      pilha.add(s[i]);
    }

    return pilha.isEmpty;
  }
}