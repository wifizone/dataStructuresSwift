//
//  LinkedList.swift
//  dataStructsSwift
//
//  Created by Anton Poluianov on 17/07/2018.
//  Copyright © 2018 Anton Poluianov. All rights reserved.
//

import UIKit

class Node {
	init(_ data:Int) {
		self.data = data
	}
	
	var nextNode: Node?
	var data: Int?
}

class LinkedList: ContainerDataStructure, LinkedListed {
	init() {
		count = 0
	}
	
	var count: Int!
	var head: Node?
	
	func getIndexOfElement(withValue value: Int) -> Int {
		var currentHead = head
		var index = 0
		
		while currentHead != nil {
			if currentHead?.data == value {
				return index
			}
			currentHead = currentHead?.nextNode
			index += 1
		}
		return -1
	}
	
	func printStructure() {
		while let currentHead = head {
			if let data = currentHead.data {
				print("\(String(describing: data)) -> ", terminator:"")
			}
			head = currentHead.nextNode
		}
	}
	
	subscript(index:Int) -> Int? {
		get {
			var currentNode = head
			for _ in 1..<index {
				currentNode = currentNode?.nextNode
			}
			return currentNode?.data
		}
	}
	
	func append(nodeWith value:Int) {
		count = count + 1
		
		let newHead = Node(value)
		newHead.nextNode = head
		head = newHead
		
		print("Node with value \(value) was added at the beginning")
	}
	
	func insert(atTheEnd value: Int) {
		var currentHead = head
		let newNode = Node(value)
		
		if currentHead == nil {
			head = newNode
		}
		else {
			while currentHead != nil {
				if currentHead?.nextNode == nil {
					currentHead?.nextNode = newNode
					break
				}
				currentHead = currentHead?.nextNode
			}
		}
		print("Node with value \(value) was added at the end")
	}
}
