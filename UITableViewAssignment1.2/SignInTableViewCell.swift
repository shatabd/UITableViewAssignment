//
//  SignInTableViewCell.swift
//  UITableViewAssignment1.2
//
//  Created by Macmini-13 on 20/09/2022.
//

import UIKit

class SignInTableViewCell: UITableViewCell {

    static let identifier = "SignInTableViewCell"
    
        static func nib() -> UINib {
            return UINib(nibName: "SignInTableViewCell", bundle: nil)
        }
    
    private lazy var curveImage: UIImageView = {

        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = .profile
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .white
        return image
    }()

    
    private(set) lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sign in to your iPhone"
        label.textColor = UIColor.blue
        label.font = label.font.withSize(20)
        return label
    }()
    
    private(set) lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Set up i9Cloud, the App Store, and more."
        label.font = label.font.withSize(12)
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func prepareLayout() {
        contentView.addSubview(curveImage)
        contentView.addSubview(titleLabel)
        contentView.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
            curveImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            curveImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            curveImage.heightAnchor.constraint(equalToConstant: 50),
            curveImage.widthAnchor.constraint(equalToConstant: 50),
            
            titleLabel.leadingAnchor.constraint(equalTo: curveImage.trailingAnchor, constant: 8),
            titleLabel.centerYAnchor.constraint(equalTo: curveImage.centerYAnchor, constant: 0),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            subTitleLabel.leadingAnchor.constraint(equalTo: curveImage.trailingAnchor, constant: 8),
        ])
    }
    
}
