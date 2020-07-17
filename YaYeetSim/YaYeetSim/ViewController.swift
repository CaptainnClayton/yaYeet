//
//  ViewController.swift
//  YaYeetSim
//
//  Created by Clayton Watkins on 7/16/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var yeet : String = "YEET"
    
    @IBOutlet weak var yeetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yeetButtonPressed(_ sender: UIButton) {
        let red   = CGFloat((arc4random() % 256)) / 255.0
        let green = CGFloat((arc4random() % 256)) / 255.0
        let blue  = CGFloat((arc4random() % 256)) / 255.0
        let alpha = CGFloat(1.0)
        
        let randomColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        view.backgroundColor = .some(randomColor)
        
        yeet.append(" YEET ")
        yeetLabel.text = yeet
    }
    
}

