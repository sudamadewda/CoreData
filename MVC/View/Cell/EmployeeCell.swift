//
//  EmployeeCell.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import UIKit

class EmployeeCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    
    var employeeData:Employee?{
        didSet{
            lblName.text = employeeData?.name
            lblEmail.text = employeeData?.email
            lblPhone.text = employeeData?.phone
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

