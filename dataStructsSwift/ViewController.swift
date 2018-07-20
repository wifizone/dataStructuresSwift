//
//  ViewController.swift
//  dataStructsSwift
//
//  Created by Anton Poluianov on 17/07/2018.
//  Copyright © 2018 Anton Poluianov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		let linkedList = LinkedList()
		linkedList.append(nodeWith: 4)
		linkedList.append(nodeWith: 45)
		linkedList.insert(atTheEnd: 3)
		linkedList.printStructure()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

