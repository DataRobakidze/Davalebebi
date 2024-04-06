//
//  ViewController.swift
//  13.davaleba
//
//  Created by Data on 05.04.24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainIMG: UIImageView!
    @IBOutlet weak var miniButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var bigButton: UIButton!
    @IBOutlet weak var priceLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func actMiniButton(_ sender: Any) {
        priceLable.text = "₾ 5"
    }
    @IBAction func actMiddleButton(_ sender: Any) {
        priceLable.text = "₾ 7"
    }
    @IBAction func actBigButton(_ sender: Any) {
        priceLable.text = "₾ 10"
    }
}
//#Preview {
//    ViewController()
//}

