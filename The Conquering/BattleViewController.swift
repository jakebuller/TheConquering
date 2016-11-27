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
    @IBOutlet var diceContainerView: UIView!
    
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
    
        // UI Styling
        rollButton.layer.cornerRadius = 8
        diceContainerView.layer.cornerRadius = 8
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
        rotate360Degrees(view: diceImage, duration: 0.4, completionDelegate: self)
    }
    
    func rotate360Degrees(view: UIImageView, duration: CFTimeInterval = 1.0, completionDelegate: CAAnimationDelegate? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        
        if let delegate: CAAnimationDelegate = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        
        view.layer.add(rotateAnimation, forKey: nil)
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        NSLog("Animation stopped")
        let diceVal = arc4random_uniform(6) + 1
        NSLog("Rolled: " + String(diceVal))
        let imageName = "dice-" + String(diceVal)
        diceImage.image = UIImage(named: imageName)
    }
}
