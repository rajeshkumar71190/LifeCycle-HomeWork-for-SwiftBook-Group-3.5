//
//  Model.swift
//  LifeCycle
//
//  Created by Michael Tseitlin on 4/27/19.
//  Copyright © 2019 Michael Tseitlin. All rights reserved.
//

import UIKit

class Helper: NSObject {
    
    private var arrayOfMethods = [String]()
    static let shared = Helper()
    let mainLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 300))
    
    private override init() {
        super.init()
    }
    
    func printMessage(vc: UIViewController, line: Int = #line, function: String = #function) {
        print("\(vc.title ?? "nil"). Line: \(line) of function \(function)")
        arrayOfMethods.append(function)
        let string = arrayOfMethods.joined(separator: "\n")
        
        guard let window = UIApplication.shared.keyWindow else { return }
        
        if !window.subviews.contains(mainLabel) {
            window.addSubview(mainLabel)
            window.bringSubviewToFront(mainLabel)
        }
        
        mainLabel.text = "\(vc.title ?? "nil") \(string)"
    }
}
