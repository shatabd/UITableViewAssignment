//
//  ViewController.swift
//  UI TableView Assignment.1
//
//  Created by Macmini-13 on 16/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    let listnames = ["Mikasa", "Uchiha", "Levi", "Hanji", "Sasha"]
    let images: [UIImage] = [UIImage.mikasa, UIImage.notificationLogo, UIImage.levi, UIImage.hanji, UIImage.sasha]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listnames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        cell.label.text = listnames[indexPath.row]
        cell.iconImageView.image = images[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stordboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = stordboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.images =  images[indexPath.row]
        controller.labelName = listnames[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

