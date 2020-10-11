//
//  ViewController.swift
//  Task6
//
//  Created by 坂本龍哉 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var odaiLabel: UILabel!
    @IBOutlet private weak var numSlider: UISlider!
    @IBOutlet private weak var hanteiButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        odaiLabel.text = String(arc4random_uniform(101))
        
    }
    
    @IBAction func hanteiAction(_ sender: Any) {
        let num = Int(numSlider.value * 100)
        
        func alert1() {
            let didlog = UIAlertController(title: "結果", message: "ハズレ！\nあなたの値は\(num)", preferredStyle: .alert)
            didlog.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: nil))
            self.present(didlog, animated: true, completion: nil)
            odaiLabel.text = String(arc4random_uniform(101))
        }
        
        func alert2() {let didlog2 = UIAlertController(title: "結果", message: "あたり！\nあなたの値は\(num)", preferredStyle: .alert)
            didlog2.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: nil))
            self.present(didlog2, animated: true, completion: nil)
            odaiLabel.text = String(arc4random_uniform(101))
        }
        
        guard odaiLabel.text == String(num) else{
            alert1()
            return
        }
        alert2()
        
    }
}

