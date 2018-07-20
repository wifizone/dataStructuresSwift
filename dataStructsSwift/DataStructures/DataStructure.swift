//
//  DataStructure.swift
//  dataStructsSwift
//
//  Created by Anton Poluianov on 17/07/2018.
//  Copyright © 2018 Anton Poluianov. All rights reserved.
//

import Foundation

protocol ContainerDataStructure {
	var count: Int! { get }
	func printStructure()
}

protocol LinkedListed {
	subscript(index: Int) -> Int? { get }
	mutating func insert(atTheEnd value: Int)
	mutating func append(nodeWith value: Int)
}


