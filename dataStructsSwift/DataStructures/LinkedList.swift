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
	
	var count: Int
	var head: Node?
	
	func printStructure() {
		var node = head
		while (node?.nextNode != nil) {
			print(node!.data!)
			node = node?.nextNode
		}
	}
	
	subscript(index: Int) -> Int? {
		get {
			var currentNode = head
			for _ in 1..<index {
				currentNode = currentNode?.nextNode
			}
			return currentNode?.data
		}
	}
	
	func append(nodeWith value: Int) {
		count += 1
		let node = Node(value)
		
		if (head != nil) {
			node.nextNode = head
		}
		
		head = node
	}
}
