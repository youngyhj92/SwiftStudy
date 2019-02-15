//
//  CustomTableViewCell.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 14/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var customCellLabel: UILabel!
    @IBOutlet weak var customCellImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
