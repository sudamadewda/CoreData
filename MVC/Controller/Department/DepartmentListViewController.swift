//
//  DepartmentListViewController.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import Foundation
import UIKit

class DepartmentListViewController: UIViewController, UISearchBarDelegate{
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    var arrData:[Department] = []
    var department:Department?
    var thred: Thread

    // MARK: - UIView Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
    }
    override func viewWillAppear(_ animated: Bool) {
        arrData = DatabaseHelper.shareInstance.getAllData()
        if(arrData.count != 0)
        {
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Actions
    @IBAction func btnSaveClick(_ sender: UIBarButtonItem) {
        let formVC = self.storyboard?.instantiateViewController(withIdentifier:Identifier.departmentForm) as? DepartmentFormViewController
        self.navigationController?.pushViewController(formVC!, animated: true)
    }
    

}

// MARK: - Datasource TableView Methods
extension DepartmentListViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

            return arrData.count

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Identifier.departmentCell, for: indexPath) as? DepartmentCell

           cell?.cellData = arrData[indexPath.row]

        return cell!
    }
}

// MARK: - Delegate TableView Methods
extension DepartmentListViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: Identifier.departmentDetail) as? DepartmentDetailViewController
       
            detailVC?.detailData = arrData[indexPath.row]
           
      
        self.navigationController?.pushViewController(detailVC!, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

}


