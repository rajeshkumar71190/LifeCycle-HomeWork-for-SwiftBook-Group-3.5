//
//  ViewController.swift
//  LifeCycle
//
//  Created by Michael Tseitlin on 4/27/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var arrayOfMethods = [String]()

    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var yellowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    func printMessage(line: Int = #line, function: String = #function) {
        print("\(title ?? "nil"). Line: \(line) of function \(function)")
        arrayOfMethods.append(function)
        let string = arrayOfMethods.joined(separator: "\n")
        greenLabel.text = "\(title ?? "nil") \(string)"
    
    }

}

