//
//  EmployeeListViewController.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation

import UIKit
import CoreData
class EmployeeListViewController: UIViewController, UISearchBarDelegate {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    var arrData:[Employee] = []
    var department: Department?
   
    // MARK: - UIView Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if department?.employees != nil{
            arrData = department?.employees?.allObjects as! [Employee]
            self.tableView.reloadData()
        }
        self.tableView.tableFooterView = UIView()
    }
    override func viewWillAppear(_ animated: Bool) {
       
        if department?.employees != nil {
            arrData = department?.employees?.allObjects as! [Employee]
            self.tableView.reloadData()
        }
    }
    
  
    // MARK: - Actions
    @IBAction func btnSaveClick(_ sender: UIBarButtonItem) {
        let formVC = self.storyboard?.instantiateViewController(withIdentifier: Identifier.employeeForm) as? EmployeeFormViewController
        formVC?.department = department
        self.navigationController?.pushViewController(formVC!, animated: true)
    }
}

// MARK: - TableView Delegate & Datasource Methods
extension EmployeeListViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier.employeeCell, for: indexPath) as? EmployeeCell

           cell?.employeeData = arrData[indexPath.row]

        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
 
}
