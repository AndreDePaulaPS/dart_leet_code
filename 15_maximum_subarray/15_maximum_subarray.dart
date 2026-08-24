/*
Maximum Subarray

Dada uma lista de inteiros nums, encontre a sublista CONTÍGUA
que possui a maior soma e retorne o valor dessa soma.

Uma sublista contígua é formada por elementos consecutivos
da lista original.

Exemplo:

nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]

A sublista com maior soma é:

[4, -1, 2, 1]

Soma:
4 + (-1) + 2 + 1 = 6

Resultado:
6


Exemplo 2:

nums = [5, 4, -1, 7, 8]

Resultado:
23


Exemplo 3:

nums = [-5, -2, -8]

Resultado:
-2
*/

class MaximumSubarray {
  int maxSubArray(List<int> nums) {
    int maiorSoma = nums[0];
    int somaAtual = nums[0];

    for (var i = 1; i < nums.length; i++){

      var soma = somaAtual + nums[i];

      if(soma < nums[i]){
        somaAtual = nums[i];
      } else {
        somaAtual = soma;
      }

      if(somaAtual > maiorSoma) {
        maiorSoma = somaAtual;
      }
      

    }
    return maiorSoma;
  }
}