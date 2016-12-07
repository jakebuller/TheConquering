//
//  Team+CoreDataProperties.swift
//  The Conquering
//
//  Created by Jake Buller on 2016-12-06.
//  Copyright © 2016 Jake Buller. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Team {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Team> {
        return NSFetchRequest<Team>(entityName: "Team");
    }

    @NSManaged public var name: String?
    @NSManaged public var num_men_alive: Int32
    @NSManaged public var num_men_total: Int32

}
