//
//  EmployeeTableViewCell.swift
//  MVVMDemo
//
//  Created by Le on 25/11/2020.
//

import UIKit


class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    var employee : EmployeeData? {
        didSet {
            employeeIdLabel.text = "\(String(describing: employee?.id))"
            employeeNameLabel.text = employee?.employeeName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
