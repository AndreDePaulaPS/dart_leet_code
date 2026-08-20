class MoveZeroes {
  void moveZeroes(List<int> nums) {
    var proximaPosicao = 0;
    
    for (var i = 0; i < nums.length; i++){
      if(nums[i] != 0){
        nums[proximaPosicao] = nums[i];
        proximaPosicao++;
      }

    }
    for (var i = proximaPosicao; i < nums.length; i++){
      nums[i] = 0;
    }
  }
}