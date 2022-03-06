//
//  DepartmentCell.swift
//  CoreDataTask
//
//  Created by Hiecor on 04/03/22.
//

import UIKit

class DepartmentCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var labelName: UILabel!
    
    var cellData:Department?{
        didSet{
            labelName.text = cellData?.departmentName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
