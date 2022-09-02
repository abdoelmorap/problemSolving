//Try To Solve This Problem 
//With My Knowledge
//Merge Two Sorted Lists
/***
You are given the heads of two sorted linked lists list1 and list2.

Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

Return the head of the merged linked list.

Input: list1 = [1,2,4], list2 = [1,3,4]
Output: [1,1,2,3,4,4]
Example 2:

Input: list1 = [], list2 = []
Output: []
Example 3:

Input: list1 = [], list2 = [0]
Output: [0]
 

Constraints:

The number of nodes in both lists is in the range [0, 50].
-100 <= Node.val <= 100
Both list1 and list2 are sorted in non-decreasing order.
*/

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  
ListNode? myfinalList;
 List<int> Myarray=[];
while(list1!=null) {
  Myarray.add(list1.val);
  list1= list1.next;
}
while(list2!=null) {
  Myarray.add(list2.val);
  list2= list2.next;
}
Myarray.sort();
for(var item in Myarray){
   myfinalList=  pushtoList(myfinalList,item);
}

return myfinalList;
  }
  pushtoList(list,val){
if(list==null){
  list = ListNode(val);
}else{
  final node1 = ListNode(val);
  getTail(list).next=node1;}
  return list;
 
  }

getTail(list){
    ListNode tail=list;
    while(tail.next!=null){
tail=tail.next!;
    }
    if(tail.next==null){
return tail;
    }
  }
}


/**
LeetCode Result
Success
Details 
Runtime: 387 ms, faster than 85.18% of Dart online submissions for Merge Two Sorted Lists.
Memory Usage: 144.1 MB, less than 24.07% of Dart online submissions for Merge Two Sorted Lists.



*/
 
