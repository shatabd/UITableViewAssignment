//
//  CustomTableViewCell.swift
//  UI TableView Assignment.1
//
//  Created by Macmini-13 on 19/09/2022.
//

import UIKit
extension UITableViewCell {
    static var identifier: String {
        "\(self)"
    }
}

class CustomTableViewCell: UITableViewCell {


  @IBOutlet weak var iconImageView: UIImageView!
  @IBOutlet weak var label: UILabel!
    
}
