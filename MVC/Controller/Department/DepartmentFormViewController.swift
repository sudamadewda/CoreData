//
//  DepartmentFormViewController.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation

import UIKit
class DepartmentFormViewController: UIViewController{
    
    // MARK: - Outlets
    @IBOutlet weak var txtName: UITextField!
    
    var departmentData:Department?
    
    // MARK: - UIView Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
        txtName.text = self.departmentData?.departmentName
      
    }

    // MARK: - Actions
    @IBAction func btnSaveClick(_ sender: UIButton) {
      //  let dict:[String:String] = [Field.name:txtName.text!]
        let department = DepartmentModel(name: txtName.text)
        if txtName.text == Field.emptyString{
            UIAlertController.alert(title: AlertField.departmentTitle, message: AlertField.messName, viewcontroller: self)
        }else{
            DatabaseHelper.shareInstance.save(object: department)
            self.navigationController?.popViewController(animated: true)

        }
    }
    
}

