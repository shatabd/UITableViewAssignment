//
//  ViewController.swift
//  UITableViewAssignment1.2
//
//  Created by Macmini-13 on 19/09/2022.
//

import UIKit

struct SettingOption{
    let title: String
    let icon: UIImage?
    }

struct InnerItem {
    var item: [SettingOption]
}
class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var list: [InnerItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.sectionHeaderTopPadding = 0.0
        
        tableView.register(SignInTableViewCell.self, forCellReuseIdentifier: SignInTableViewCell.identifier)
        
        list = [
            InnerItem(item: [
                SettingOption(title: "Sign in to your Iphone", icon: .profile)
            ]),
            InnerItem(item: [
                SettingOption(title: "General", icon: .setting),
                SettingOption(title: "Privacy", icon: .privacy)
                
            ]),
            InnerItem(item: [
                SettingOption(title: "Passwords & Accounts", icon: .account)
            ]),
            InnerItem(item: [
                SettingOption(title: "Maps", icon: .maps),
                SettingOption(title: "Safari", icon: .safari),
                SettingOption(title: "News", icon: .news),
                SettingOption(title: "Siri", icon: .siri),
                SettingOption(title: "Photos", icon: .photo),
                SettingOption(title: "Game Center", icon: .gamecenter),
            ]),
            
            InnerItem(item: [
                SettingOption(title: "Developer", icon: .developer)
            ]),
                        
        ]
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list[section].item.count
    }
    
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: SignInTableViewCell.identifier, for: indexPath) as! SignInTableViewCell
            let item = list[indexPath.section].item[indexPath.row]
            

            
            return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTableView", for: indexPath) as! CustomTableViewCell
        let item = list[indexPath.section].item[indexPath.row]
        cell.set(item: item)
        
        return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = UIColor.lightGray
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 120
        }
       return 60
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    }
