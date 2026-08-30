/*
Product of Array Except Self

Dada uma lista de inteiros nums, retorne uma nova lista answer onde:

answer[i] é igual ao produto de todos os elementos de nums,
exceto nums[i].

Não utilize divisão.

Exemplo 1:

nums = [1, 2, 3, 4]

Resultado:
[24, 12, 8, 6]

Explicação:

índice 0 → 2 * 3 * 4 = 24
índice 1 → 1 * 3 * 4 = 12
índice 2 → 1 * 2 * 4 = 8
índice 3 → 1 * 2 * 3 = 6


Exemplo 2:

nums = [-1, 1, 0, -3, 3]

Resultado:
[0, 0, 9, 0, 0]
*/

class ProductExceptSelf {
  List<int> productExceptSelf(List<int> nums) {
    var resultado = List.filled(nums.length, 0);
  var produtoDireita = 1;

  resultado[0] = 1;

   for (var i = 1 ; i < nums.length; i++){
    
    resultado[i] = nums[i - 1] * resultado[i-1];
   }

   for(var i = nums.length - 1; i >= 0 ; i--){
    resultado[i] = resultado[i] * produtoDireita;
    produtoDireita = produtoDireita  *nums[i];
   }
  return resultado;
  }
}