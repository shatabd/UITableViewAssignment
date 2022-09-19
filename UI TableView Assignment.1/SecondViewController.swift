//
//  SecondViewController.swift
//  UI TableView Assignment.1
//
//  Created by Macmini-13 on 19/09/2022.
//

import UIKit

class SecondViewController: UIViewController {

   
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    
    var images: UIImage?
    var labelName : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = labelName
        detailImageView.image = images
    }
    

    

}
