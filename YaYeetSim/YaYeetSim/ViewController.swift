//
//  ViewController.swift
//  YaYeetSim
//
//  Created by Clayton Watkins on 7/16/20.
//  Copyright © 2020 Clayton Watkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    var yeet : String = ""
    
    // MARK: - IBOutlet
    @IBOutlet weak var yeetLabel: UILabel!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Praise YEESUS")
    }
    
    // MARK: - IBActions
    // Getting the almighty YEET
    @IBAction func yeetButtonPressed(_ sender: UIButton) {
        func getRandomColor() -> UIColor{
            let randomRed = CGFloat((arc4random() % 256)) / 255.0
            let randomGreen = CGFloat((arc4random() % 256)) / 255.0
            let randomBlue = CGFloat((arc4random() % 256)) / 255.0
            let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1)
            return randomColor
        }
        
        let randomColor = getRandomColor()
        let randomColor2 = getRandomColor()
        
        view.backgroundColor = .some(randomColor)
        yeetLabel.textColor = .some(randomColor2)
        
        yeet.append(" YEET ")
        yeetLabel.text = yeet
    }
}

