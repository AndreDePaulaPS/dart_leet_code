class SearchInsertPosition {
  int searchInsert(List<int> nums, int target) {
    var inicio = 0;
    var fim = nums.length - 1;
    late int meio;

    while (inicio <= fim){
      meio = (inicio + fim) ~/ 2;
      if(target == nums[meio]){
        return meio;
      }
      if(target > nums[meio]){
        inicio = meio + 1;
      }
      if (target < nums[meio]){
        fim = meio - 1;
      }
      
    }
    return inicio;
  }
}