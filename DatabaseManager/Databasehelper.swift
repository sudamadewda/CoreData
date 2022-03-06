//
//  Databasehelper.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation
import CoreData
import UIKit

class DatabaseHelper{
    
    // MARK: - Initialisation
    static let shareInstance = DatabaseHelper()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    // MARK: - Save Deparment
    func save(object: DepartmentModel){
        let departObj = NSEntityDescription.insertNewObject(forEntityName: Identifier.departmentEntity, into: context) as! Department
        departObj.departmentName = object.name
       
        do{
            try context.save()
        }catch let error as NSError{
            print(ErrTitle.errSave + error.localizedDescription)
        }
    }


    // MARK: - getDeparmentData
    func getAllData() -> [Department]{
        var department:[Department] = []
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: Identifier.departmentEntity)
        do{
            department = try context.fetch(fetchRequest) as! [Department]
            print(department)
        }catch let error as NSError{
            print(ErrTitle.errGet + error.localizedDescription)
        }
        return department
    }
    
    // MARK: - Save Employee Data
    func saveEmployee(object:EmployeeModel,Deparment:Department){
        let employeeObj = NSEntityDescription.insertNewObject(forEntityName: Identifier.employeeEntity, into: context) as! Employee
        employeeObj.name = object.name
        employeeObj.email = object.email
        employeeObj.phone = object.phone
        employeeObj.sector = Deparment
        do{
            try context.save()
        }catch let error as NSError{
            print(ErrTitle.errSave + error.localizedDescription)
        }
    }
   
}



