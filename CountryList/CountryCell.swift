//
//  CountryCell.swift
//  CountryListExample
//
//  Created by Juan Pablo on 9/8/17.
//  Copyright © 2017 Juan Pablo Fernandez. All rights reserved.
//

import UIKit

class CountryCell: UITableViewCell {
    
    var nameLabel: UILabel?
    var extensionLabel: UILabel?
    var flagImage: UILabel?
    var country: Country? {
        didSet {
            if let name = country!.name {
                nameLabel?.text = "\(name)"
                extensionLabel?.text = "+\(country!.phoneExtension)"
                flagImage?.text =  (country?.flag)!
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForReuse() {
        self.nameLabel?.text = ""
        self.extensionLabel?.text = ""
    }
    
    func setup() {
        
        flagImage = UILabel()
        flagImage?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(flagImage!)
        
        //flagImage?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        //flagImage?.frame = CGRect(x: 10, y: 10, width: 30, height: 20)
        flagImage?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        flagImage?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        
        nameLabel = UILabel()
        nameLabel?.textColor = UIColor.black
        nameLabel?.font = UIFont.systemFont(ofSize: 20)
        nameLabel?.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(nameLabel!)
        
        nameLabel?.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel?.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 50).isActive = true
        
    }
}
