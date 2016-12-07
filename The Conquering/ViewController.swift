//
//  ViewController.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-11-19.
//  Copyright © 2016 Jake Buller. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bundleID = String(describing: Bundle.main.bundleIdentifier)
        NSLog(bundleID)
        // Do any additional setup after loading the view, typically from a nib.
        
        DispatchQueue.global().async {
            // qos' default value is ´DispatchQoS.QoSClass.default`
            let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
            let managedContext = appDelegate.persistentContainer.viewContext
            // Create an entity
            let entityDesription =  NSEntityDescription.entity(forEntityName: "Team", in: managedContext)
            
            // Check if team 1 exists
            let teamOneFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Team")
            teamOneFetch.predicate = NSPredicate(format: "name == %@", "TeamOne")
            
            var fetchedTeam = [Team]()
            do {
                fetchedTeam = try managedContext.fetch(teamOneFetch) as! [Team]
            } catch {
                fatalError("Failed to team employees: \(error)")
            }
            
            if (fetchedTeam.count == 0) {
                NSLog("Did not find team 1, creating now")
                let team1 = Team(entity: entityDesription!, insertInto: managedContext)
                team1.name = "TeamOne"
            } else {
                NSLog("Found team 1, skipping create")
            }
            
            do {
                try managedContext.save()
            } catch let error as NSError  {
                print("Could not save \(error), \(error.userInfo)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func register(_ sender: Any) {
        NSLog("Register clicked")
    }

    @IBAction func settings(_ sender: Any) {
        NSLog("Settings clicked")
    }
    
    func transition(Sender: UIButton!) {
//        let  = SecondViewController()
        
//        self.presentViewController(secondViewController, animated: true, completion: nil)
        
    }
}

    
