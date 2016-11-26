//
//  UtilitesViewController.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-11-26.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit

class UtilitesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func BattleClicked(_ sender: Any) {
        let vc = BattleViewController() //change this to your class name
        self.present(vc, animated: true, completion: nil)
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
