//
//  ViewController.swift
//  iOS101_Prework
//
//  Created by Samiyah Hoque on 8/22/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CareerLabel: UILabel!
    @IBOutlet weak var SchoolLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = UIColor.white
        let labelArray: [UILabel] = [CareerLabel, SchoolLabel, NameLabel]
        for label in labelArray {
            label.textColor = UIColor.black
        }
        
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        func changeColorText() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColorText()
        let labelArray: [UILabel] = [CareerLabel, SchoolLabel, NameLabel]

        for label in labelArray {
            label.textColor = randomColor
        }
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)

            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
}

