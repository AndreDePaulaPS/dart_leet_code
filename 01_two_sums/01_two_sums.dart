class Solution {
  List<int> twoSum(List<int> nums, int target) {

    final numeros = <int, int>{};

    for (var i = 0; i < nums.length; i++){
      final complemento = target - nums[i];

      if (numeros.containsKey(complemento)){
        return [numeros[complemento]!, i];
      }

      numeros[nums[i]] = i;
    }
    return [];
}}

void main(){
    const list = [3,2,4];
    const target = 6;
    print(Solution().twoSum(list, target));
}