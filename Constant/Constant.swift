//
//  Constant.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation

// MARK: - Identifier
struct Identifier {
    static let employeeEntity = "Employee"
    static let departmentEntity = "Department"
    static let employeeCell = "EmployeeCell"
    static let employeeForm = "EmployeeFormViewController"
    static let departmentForm = "DepartmentFormViewController"
    static let departmentCell = "DepartmentCell"
    static let departmentDetail = "DepartmentDetailViewController"
    static let employeeStory = "Employee"
    static let departmentStory = "Department"
    static let employeeList = "EmployeeListViewController"
}

// MARK: - FieldNames
struct Field{
    static let name = "name"
    static let email = "email"
    static let phone = "phone"
    static let sector = "sector"
    static let emptyString = ""
}

// MARK: - AlertField Names
struct AlertField{
    static let employeeTitle = "Employee"
    static let departmentTitle = "Department"
    static let messName = "Please Enter Name"
    static let messEmail = "Please Enter Email"
    static let messPhone = "Please Enter Phone Number"
}

// MARK: - LabelNames / Fields
struct LabelField{
    static let name = "Name "
    static let email = "Email "
    static let phone = "Phone "
    static let departmentName = "Department Name "
    static let employeeCount = "Employee "
}



// MARK: - Error Names
struct ErrTitle {
    static let errSave = "Data Could not be Save"
    static let errEdit = "Data Could not be Edit"
    static let errDelete = "Data Could not be Delete"
    static let errGet = "Data Could not be Get "
}

