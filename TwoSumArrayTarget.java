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
    public int[] twoSum(int[] nums, int target) {
              //method with array List By Abdelrhman Tolba
        ArrayList<Integer> comper = new ArrayList<Integer>();
    for(int i =0;i<nums.length;i++)
    {
if(comper.contains(target-nums[i])){
    
   return new int[]{comper.indexOf(target-nums[i]),i};
}
comper.add(nums[i]);
    }

        
        return new int[]{0,0};
    }
}
// class Solution {
//     public int[] twoSum(int[] nums, int target) {
       
//         //[2,7,11,15], target = 9
//         // On(n2)
//         // 2 ,3 
//         //Method With HashMap
//         Map<Integer,Integer> map  = new HashMap<Integer,Integer>();
//         for(int i=0;i<nums.length;i++){
//             if(map.containsKey(nums[i])){
//                 return new int[]{map.get(nums[i]),i};
//             }
//             map.put(target-nums[i],i);
//         }
        
//         for(int i=0 ;i<nums.length;i++){
//             //3
//             for( int j=i+1;j<nums.length;j++){
//                 //j =4
//                 if(nums[i]+nums[j]==target)
//                     return new int[]{i,j};
                
//             }
            
            
//         }
        
        // return new int[]{0,0};
//     }
// }
