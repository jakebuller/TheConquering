//
//  BattleViewController.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-11-26.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController {

    @IBOutlet var rollButton: UIButton!
    @IBOutlet var diceImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // UI Styling
        rollButton.layer.cornerRadius = 8
        diceImage.layer.cornerRadius = 8
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollClicked(_ sender: Any) {
        NSLog("roll clicked")
        rollDice()
    }

    func rollDice() {
        let diceVal = arc4random_uniform(6) + 1
        NSLog("Rolled: " + String(diceVal))
        let imageName = "dice-" + String(diceVal)
        diceImage.image = UIImage(named: imageName)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
