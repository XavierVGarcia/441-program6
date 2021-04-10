//
//  ViewController.swift
//  SimpleGameSB
//
//  Created by Xavier Garcia on 3/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var maxCounterLabel: UILabel!
    
    var maxCounter:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    func maxCheck(newMax: Int){
        if(newMax > maxCounter){
            maxCounter = newMax
            maxCounterLabel.text = String(maxCounter)
        }
    }
    


}

