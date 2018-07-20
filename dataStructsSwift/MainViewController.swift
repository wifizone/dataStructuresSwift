//
//  MainViewController.swift
//  dataStructsSwift
//
//  Created by Anton Poluianov on 20/07/2018.
//  Copyright © 2018 Anton Poluianov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

		let linkedList = LinkedList()
		linkedList.append(nodeWith: 4)
		linkedList.append(nodeWith: 45)
		linkedList.insert(atTheEnd: 3)
		print(linkedList.getIndexOfElement(withValue: 4))
		linkedList.printStructure()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
