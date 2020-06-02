//
//  main.swift
//  Day2ProblemLeetCode
//
//  Created by Darshika Patel on 02/06/20.
//  Copyright © 2020 Darshika Patel. All rights reserved.
//

import Foundation

public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
}

class Solution {
    
    func display(_ node: ListNode?) {
        var temp = node
        while temp != nil {
            print(temp?.val ?? "")
            //print("\n")
            temp = temp?.next
        }
    }
    
    func deleteNode(_ node: ListNode?) {
        
        let temp = node
        temp?.val = (temp?.next?.val)!
        temp?.next = temp?.next?.next
    }
}


let list = ListNode(4)
let list1 = ListNode(5)
let list2 = ListNode(1)
let list3 = ListNode(9)
let list4 = ListNode(6)
let list5 = ListNode(7)

list.next = list1
list1.next = list2
list2.next = list3
list3.next = list4
list4.next = list5

let solutionObj = Solution()
solutionObj.display(list)
solutionObj.deleteNode(list2)
solutionObj.display(list)
