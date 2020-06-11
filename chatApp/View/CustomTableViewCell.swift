//
//  CustomTableViewCell.swift
//  chatApp
//
//  Created by akrolayer on 2020/06/11.
//  Copyright © 2020 akrolayer. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
