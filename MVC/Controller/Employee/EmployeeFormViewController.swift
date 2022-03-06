//
//  EmployeeFormViewController.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import UIKit

class EmployeeFormViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var txtBirthdate: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    
    var department:Department?
    var employeeData:Employee?
    var data:[Employee] = []
   
    // MARK: - UIView Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtName.text = employeeData?.name
        txtPhone.text = employeeData?.phone
        txtEmail.text = employeeData?.email
        
    }
    override func viewWillAppear(_ animated: Bool) {
        btnSave.setTitle("Save", for: .normal)
        
    }
    
    // MARK: - Actions
    @IBAction func btnSaveClick(_ sender: UIButton) {
        let employee = EmployeeModel(name: txtName.text, phone: txtPhone.text, email: txtEmail.text)
        if txtName.text == Field.emptyString{
            UIAlertController.alert(title: AlertField.employeeTitle, message: AlertField.messName, viewcontroller: self)
        }else if txtEmail.text == Field.emptyString{
            UIAlertController.alert(title: AlertField.employeeTitle, message: AlertField.messEmail, viewcontroller: self)
        }else if txtPhone.text == Field.emptyString{
            UIAlertController.alert(title: AlertField.employeeTitle, message: AlertField.messPhone, viewcontroller: self)
        }else{
         
            DatabaseHelper.shareInstance.saveEmployee(object: employee, Deparment: department!)
        
            self.navigationController?.popViewController(animated: true)
        }
    }
}
