class RemoveDuplicates {
  int removeDuplicates(List<int> nums) {
    if(nums.isEmpty) return 0;

    var k = 1;

    for(var i = 1; i < nums.length; i++){
      
      if(nums[k-1] == nums[i]){
        continue;
      }
        nums[k] = nums[i];
        k++;
    }
    return k;
  }
}