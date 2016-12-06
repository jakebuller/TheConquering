//
//  DiceView.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-11-26.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit

class DiceView: UIView, CAAnimationDelegate {
    
    var value : Int = 0
    
    var imageView : UIImageView? = nil
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        addBehavior()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func roll() {
        // Update the current value
        self.imageView!.image = UIImage(named: "dice-random")
        self.value = Int(arc4random_uniform(6)) + 1
        self.rotate360Degrees(duration: 0.5)
    }
    
    private func addBehavior (){
        imageView = UIImageView(image: UIImage(named: "dice-random"))
        imageView!.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.addSubview(imageView!)
    }
    
    private func rotate360Degrees(duration: CFTimeInterval = 1.0) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.fromValue = 0.0
        rotateAnimation.toValue = CGFloat(M_PI * 2.0)
        rotateAnimation.duration = duration
        rotateAnimation.delegate = self
        
        self.imageView!.layer.add(rotateAnimation, forKey: nil)
    }
    
    private func updateImage() {
        let imageName = "dice-" + String(value)
        self.imageView!.image = UIImage(named: imageName)
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        self.updateImage()
    }
}

