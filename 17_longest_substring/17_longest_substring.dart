/*
Longest Substring Without Repeating Characters

Dada uma String s, encontre o tamanho da maior substring que não possui
caracteres repetidos.

A substring precisa ser CONTÍGUA, ou seja, seus caracteres precisam estar
juntos na String original.

Exemplo 1:

s = "abcabcbb"

A maior substring sem caracteres repetidos pode ser "abc".

Resultado:
3


Exemplo 2:

s = "bbbbb"

A maior substring sem repetição é "b".

Resultado:
1


Exemplo 3:

s = "pwwkew"

Uma das maiores substrings é "wke".

Resultado:
3

Observe que "pwke" não é válida, pois não é uma substring contígua.
*/
class LongestSubstring {
  int lengthOfLongestSubstring(String s) {
    var left = 0;
    var right = 0;
    var words = <String>{};

    var result = 0;

    while(right < s.length){
      if(words.contains(s[right]) && words.isNotEmpty){
        words.remove(s[left]);
        left++;
        continue;
      }

      words.add(s[right]);

      if(words.length > result){
        result++;
      }
      right++;
    }
    return result;
  }
}