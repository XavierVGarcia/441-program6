//
//  secondViewController.swift
//  SimpleGameSB
//
//  Created by Xavier Garcia on 3/22/21.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var killCounter: UILabel!
    @IBOutlet weak var sword: UIImageView!
    
    @IBOutlet weak var slime: UIImageView!
    var counter:Int = 0
    var ViewController:ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func attackButton(_ sender: Any) {
        sword.image = UIImage(named: "sideSword")
        slime.image = UIImage(named: "DamagedSlime")
        counter = counter + 1
        killCounter.text = String(counter)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.sword.image = UIImage(named: "upSword")
            self.slime.image = UIImage(named: "AngrySlime")
        }
        ViewController?.maxCheck(newMax: counter)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
