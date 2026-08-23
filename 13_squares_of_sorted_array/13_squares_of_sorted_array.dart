/*
Squares of a Sorted Array

Dada uma lista de inteiros nums ordenada em ordem crescente,
retorne uma nova lista contendo o quadrado de cada número,
também em ordem crescente.

Exemplos:

nums = [-4, -1, 0, 3, 10]

Resultado:
[0, 1, 9, 16, 100]


nums = [-7, -3, 2, 3, 11]

Resultado:
[4, 9, 9, 49, 121]
*/

class SquaresOfSortedArray {
  List<int> sortedSquares(List<int> nums) {
    if(nums.isEmpty) return [];

    var rPoint = nums.length - 1;
    var lPoint = 0;
    var position = nums.length - 1;
  
    final squaresList = List.filled(nums.length, 0);

    while(rPoint >= lPoint){

      final v1 = nums[rPoint] * nums[rPoint];
      final v2 = nums[lPoint] * nums[lPoint]  ;

      if(v1 > v2){
        squaresList[position] = v1;
        rPoint--;
        position--;
        continue;
      }
      if(v1 < v2){
        squaresList[position] = v2;
        lPoint++;
        position--;
        continue;
      }
      squaresList[position] = v1;
        rPoint--;
        
        position--;
    }
    return squaresList;

  }
}