//
//  DepartmentDetailViewController.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation
import UIKit
import CoreData
class DepartmentDetailViewController: UITableViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmployee: UILabel!
    var detailData:Department!
    
    
    // MARK: - UIView Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
    }
    override func viewWillAppear(_ animated: Bool) {
        labelName.text = LabelField.name + (self.detailData.departmentName)!
        labelEmployee.text = LabelField.employeeCount + "\(self.detailData.employees!.count)"
    }
    
    // MARK: - TableView Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1{
            let storyboard = UIStoryboard.init(name: Identifier.employeeStory, bundle: nil)
            let listVC = storyboard.instantiateViewController(withIdentifier: Identifier.employeeList) as? EmployeeListViewController
            listVC?.department = detailData
            self.navigationController?.pushViewController(listVC!, animated: true)
        }
    }
}

