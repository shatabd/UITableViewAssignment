//
//  CustomTableViewCell.swift
//  UITableViewAssignment1.2
//
//  Created by Macmini-13 on 20/09/2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    
    func set(item: SettingOption) {
        iconImageView.image = item.icon
        label.text = item.title
    }

}
