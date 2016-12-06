//
//  BattleViewController.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-11-26.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit

class BattleViewController: UIViewController, CAAnimationDelegate {

    @IBOutlet var rollButton: UIButton!
    @IBOutlet var diceImage: UIImageView!
    
    
    @IBOutlet var attackDieOne: UIImageView!
    @IBOutlet var attackDieTwo: UIImageView!
    @IBOutlet var attackDieThree: UIImageView!
    
    var attackDice = [DiceView]()
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // TODO: This needs to be updated to properly add constraints and 
        // display UI dynamically
        
        // UI Styling
        rollButton.layer.cornerRadius = 8
        
        // Create a stack view to house our dice views
        let attackDiceView = UIStackView()
        
        // Create a new dice view
        let diceView1 = DiceView()
        diceView1.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        diceView1.backgroundColor = UIColor.red
        diceView1.layer.cornerRadius = 8
        
        // Create a new dice view
        let diceView2 = DiceView()
        diceView2.frame = CGRect(x: 110, y: 0, width: 100, height: 100)
        diceView2.backgroundColor = UIColor.red
        diceView2.layer.cornerRadius = 8
        
        // Create a new dice view
        let diceView3 = DiceView()
        diceView3.frame = CGRect(x: 220, y: 0, width: 100, height: 100)
        diceView3.backgroundColor = UIColor.red
        diceView3.layer.cornerRadius = 8
        
        attackDiceView.addSubview(diceView1)
        attackDiceView.addSubview(diceView2)
        attackDiceView.addSubview(diceView3)
        attackDiceView.spacing = 4
        self.view.addSubview(attackDiceView)
        
        attackDice = [diceView1, diceView2, diceView3]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollClicked(_ sender: Any) {
        for die in attackDice {
            die.roll()
        }

    }

    func doRoll(die: UIImageView) {
        
    }
}
