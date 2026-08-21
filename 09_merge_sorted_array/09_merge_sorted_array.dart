/*
Dadas duas listas de inteiros nums1 e nums2, ambas ordenadas em ordem crescente,
combine os elementos das duas listas mantendo a ordem crescente.

nums1 possui espaço suficiente no final para armazenar todos os elementos de nums2.

Os parâmetros m e n representam quantos elementos válidos existem inicialmente
em nums1 e nums2, respectivamente.

A alteração deve ser feita diretamente em nums1, sem retornar uma nova lista.

Exemplo:

nums1 = [1, 2, 3, 0, 0, 0]
m = 3

nums2 = [2, 5, 6]
n = 3

Resultado esperado em nums1:

[1, 2, 2, 3, 5, 6]
*/

class MergeSortedArray {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    if(n == 0) return;

    var k = nums1.length - 1;
    var i = m-1;
    var j = n-1;
    

    while (j >= 0){
      if(i < 0){
        nums1[k] = nums2[j];
        j--;
        k--;
        continue;
      }

      if(nums1[i] > nums2[j]){
        nums1[k] = nums1[i];
        i--;
      } else {
        nums1[k] = nums2[j];
        j--;
      }
      k--;

    }
    
  }
}