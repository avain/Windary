//
//  ReverseLinkedListIITests.swift
//  LeetCodeTests
//
//  Created by 黎赵太郎 on 07/01/2018.
//  Copyright © 2018 lizhaotailang. All rights reserved.
//
//  Test cases for [ReverseLinkedListII](./LeetCode/ReverseLinkedListII.swift).
//

import XCTest
@testable import LeetCode

class ReverseLinkedListIITests: XCTestCase {
    
    func testReverseBetween() {
        let r = ReverseLinkedListII()
        
        XCTAssertNil(r.reverseBetween(nil, 1, 2))
        
        let node123 = ReverseLinkedListII.ListNode(1)
        node123.next = ReverseLinkedListII.ListNode(2)
        node123.next?.next = ReverseLinkedListII.ListNode(3)
        let node132 = ReverseLinkedListII.ListNode(1)
        node132.next = ReverseLinkedListII.ListNode(3)
        node132.next?.next = ReverseLinkedListII.ListNode(2)
        XCTAssertTrue(r.reverseBetween(node123, 2, 3) == node132)
        
        XCTAssertTrue(r.reverseBetween(ReverseLinkedListII.ListNode(1), 1, 1) == ReverseLinkedListII.ListNode(1))
        
        let node12 = ReverseLinkedListII.ListNode(1)
        node12.next = ReverseLinkedListII.ListNode(2)
        let node21 = ReverseLinkedListII.ListNode(2)
        node21.next = ReverseLinkedListII.ListNode(1)
        XCTAssertTrue(r.reverseBetween(node12, 1, 2) == node21)
        
        let node12345 = ReverseLinkedListII.ListNode(1)
        node12345.next = ReverseLinkedListII.ListNode(2)
        node12345.next?.next = ReverseLinkedListII.ListNode(3)
        node12345.next?.next?.next = ReverseLinkedListII.ListNode(4)
        node12345.next?.next?.next?.next = ReverseLinkedListII.ListNode(5)
        let node14325 = ReverseLinkedListII.ListNode(1)
        node14325.next = ReverseLinkedListII.ListNode(4)
        node14325.next?.next = ReverseLinkedListII.ListNode(3)
        node14325.next?.next?.next = ReverseLinkedListII.ListNode(2)
        node14325.next?.next?.next?.next = ReverseLinkedListII.ListNode(5)
        XCTAssertTrue(r.reverseBetween(node12345, 2, 4) == node14325)
    }
    
}
