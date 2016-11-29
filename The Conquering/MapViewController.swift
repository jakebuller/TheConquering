//
//  MapViewController.swift
//  The Conquering
//
//  Created by Patrick West on 2016-11-26.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var WOArea: UIView!
    @IBOutlet weak var CoreProdArea: UIView!
    @IBOutlet weak var DesignArea: UIView!
    @IBOutlet weak var ClientOps: UIView!
    @IBOutlet weak var SpawningPool: UIView!
    @IBOutlet weak var Spire: UIView!
    @IBOutlet weak var ServerRoom: UIView!
    @IBOutlet weak var StandUpArea: UIView!
    @IBOutlet weak var EnteranceWay: UIView!
    @IBOutlet weak var Nexus: UIView!
    @IBOutlet weak var Kitchen: UIView!
    
    @IBOutlet weak var FinanceArea: UIView!
    
    var rooms = [Int: UIView]()
    var timer = Timer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rooms = [
            0: WOArea,
            1: CoreProdArea,
            2: DesignArea,
            3: ClientOps,
            4: FinanceArea,
            5: SpawningPool,
            6: Spire,
            7: ServerRoom,
            8: StandUpArea,
            9: EnteranceWay,
            10: Nexus,
            11: Kitchen
        ]
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(nextLocation), userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func nextLocation() {
        
        rooms.forEach { $0.1.isHidden = true}
        rooms[count]?.isHidden = false
        
        count+=1
        count%=rooms.count
    }
    
    func initializeLocation(x1:CGFloat, y1:CGFloat, x2:CGFloat, y2:CGFloat) {
        let DynamicView=UIView(frame: CGRect(x: x1, y: y1, width: x2-x1, height: y2-y1))
        DynamicView.backgroundColor=UIColor.orange
        DynamicView.layer.cornerRadius=25
        DynamicView.layer.borderWidth=2
        DynamicView.alpha = 0.5
        DynamicView.isHidden = true
        self.view.addSubview(DynamicView)
    }

}
