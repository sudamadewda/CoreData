//
//  Employee+CoreDataProperties.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var phone: String?
    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var sector: Department?

}

extension Employee : Identifiable {

}
