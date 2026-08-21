/*
Binary Search

Dada uma lista de inteiros nums ordenada em ordem crescente e um inteiro target,
encontre o índice em que target está localizado.

Se target não existir na lista, retorne -1.

O algoritmo deve aproveitar o fato de a lista estar ordenada.

Exemplos:

nums = [-1, 0, 3, 5, 9, 12]
target = 9

Resultado:
4


nums = [-1, 0, 3, 5, 9, 12]
target = 2

Resultado:
-1
*/

class BinarySearch {
  int search(List<int> nums, int target) {
    if(nums.isEmpty) return -1;

    var inicio = 0;
    var fim = nums.length - 1;
    late int meio;
    

    while(inicio <= fim){
      meio = (inicio + fim) ~/ 2;
      if(target == nums[meio]){
        return meio;
      }

      if(target > nums[meio]){
        inicio = meio+1;
      } 
      if(target < nums[meio]) {
        fim = meio - 1;
      }      
    }

    return -1;
  }
}