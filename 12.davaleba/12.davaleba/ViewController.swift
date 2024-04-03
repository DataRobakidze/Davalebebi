//
//  ViewController.swift
//  12.davaleba
//
//  Created by Data on 03.04.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swicher: UISwitch!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var meinButton: UIButton!
    @IBOutlet weak var lableOfSwitch: UILabel!
    @IBOutlet weak var answer: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actOfSwitch(_ sender: Any) {
        if swicher.isOn {
            lableOfSwitch.text = "უდიდესი საერთო გამყოფი"
        } else {
            lableOfSwitch.text = "უმცირესი საერთო ჯერადი"
        }
    }
    
    @IBAction func actOfMainButton(_ sender: Any) {
        guard let firstValue = Int(firstTextField.text ?? ""),
              let secondValue = Int(secondTextField.text ?? "") else {
            // Handle invalid input
            return
        }
        
        if swicher.isOn {
            let result2 = gcd(firstValue, secondValue)
            answer.text = "\(result2)"
        } else if !swicher.isOn {
            let result = lcm(firstValue, secondValue)
            answer.text = "\(result)"
        }
    }
    
    func lcm(_ lca1: Int, _ lca2: Int) -> Int {
        return (lca1 * lca2) / gcd(lca1, lca2)
    }
    
    func gcd(_ number1: Int, _ number2: Int) -> Int {
        var pirveli = number1
        var meore = number2
        while meore != 0 {
            let temp = meore
            meore = pirveli % meore
            pirveli = temp
        }
        return pirveli
    }
}


