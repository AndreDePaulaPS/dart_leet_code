/*
Intersection of Two Arrays

Dadas duas listas de inteiros nums1 e nums2, retorne uma nova lista
contendo os valores que aparecem nas duas listas.

Cada valor deve aparecer apenas uma vez no resultado.

A ordem dos elementos retornados não importa.

Exemplo 1:

nums1 = [1, 2, 2, 1]
nums2 = [2, 2]

Resultado:
[2]


Exemplo 2:

nums1 = [4, 9, 5]
nums2 = [9, 4, 9, 8, 4]

Resultado:
[9, 4]

ou:
[4, 9]

As duas respostas são válidas, pois a ordem não importa.
*/

class IntersectionOfTwoArrays {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    final set1 = nums1.toSet();
    var resultado = Set<int>();

    for (var i =0; i< nums2.length; i++){
      if(set1.contains(nums2[i])){
        resultado.add(nums2[i]);
      }
    }
    return resultado.toList();
  }
}