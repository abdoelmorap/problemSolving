/**Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

 

Example 1:

Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
Example 2:

Input: nums = [3,2,4], target = 6
Output: [1,2]
Example 3:

Input: nums = [3,3], target = 6
Output: [0,1]
 

Constraints:

2 <= nums.length <= 104
-109 <= nums[i] <= 109
-109 <= target <= 109
Only one valid answer exists.
 

Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?
**/
class Solution {
   List<int> twoSum(List<int> nums, int target) {
       //method with array List _by AbdelrhmanTolba
    List<int> comper=[];
    for(int i =0;i<nums.length;i++)
    {
if(comper.contains(target-nums[i])){
    
   return [comper.indexOf(target-nums[i]),i];
}
comper.add(nums[i]);
    }
  return [0,0];
  }
}
//with  Map

// Map<int,int> map  = {};
//         for(int i=0;i<nums.length;i++){
//             if(map.containsKey(nums[i])){
//                 return [map[nums[i]]??0,i];
//             }
//             map[target-nums[i]]=i;
//         }

//   return [0,0];
//    }
// }
//method 1
//               for(int i =0;i<nums.length;i++){
//             //3
//             for( int j=i+1;j<nums.length;j++){
//                 //j =4
//                 if(nums[i]+nums[j]==target)
//                     return  [i,j];
                
//             }
//               }
//                 return [0,0];

//         }
// }
void main(List<String> args) {
  print(Solution().twoSum([1,2,5,3], 4));
}
