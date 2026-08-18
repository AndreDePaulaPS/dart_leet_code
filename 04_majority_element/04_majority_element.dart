//Dado um List<int> nums, encontre o elemento que aparece mais da metade das vezes na lista.


class MajorityElement {
 int majorityElement(List<int> nums) {
  final elements = <int, int>{};
  final half = nums.length/2;
  var majorityElement = 0;

  for (var i = 0; i< nums.length; i++){

    if(nums.length == 1){
        return nums[i];
      }
    
    if(!elements.containsKey(nums[i])){
      elements[nums[i]] = 1;
    } else {
      elements[nums[i]] = elements[nums[i]]! + 1;
    } 
    if(elements[nums[i]]! > half){
        majorityElement = nums[i];
        break;
      }
  }

  return majorityElement;

 }
}