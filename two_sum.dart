class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {}; // A mapping to store numbers and their index
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i]; // Find the required number to reach the target
      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i]; // Return index of the complement and current number
      }
      numMap[nums[i]] = i; // Store the number with its index
    }
    return []; // This line is never reached due to the problem guarantee
  }
}

void main(){
    var obj = Solution();
    print(obj.twoSum([2,3,4], 6));
}