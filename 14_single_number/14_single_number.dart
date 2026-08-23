/*
Single Number

Dada uma lista de inteiros nums, todos os elementos aparecem exatamente duas vezes,
exceto um único elemento que aparece apenas uma vez.

Retorne esse elemento único.

Exemplos:

nums = [2, 2, 1]
Resultado: 1

nums = [4, 1, 2, 1, 2]
Resultado: 4

nums = [1]
Resultado: 1
*/

class SingleNumber {
  int singleNumber(List<int> nums) {
    if (nums.isEmpty) return 0;

    var resultado = 0;

    for (var i = 0; i < nums.length; i++){
      resultado = nums[i] ^ resultado;
    }
    
    return resultado;

  }
}