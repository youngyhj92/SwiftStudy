//
//  DetailInfoViewController.swift
//  OJTProjectVer2
//
//  Created by hyunjun yang on 10/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class InfoViewController : UIViewController  {
   
    @IBOutlet var infoImageView: UIImageView!
    @IBOutlet var infoTitleLabel: UILabel!
    @IBOutlet var infoMakerLabel: UILabel!
    @IBOutlet var infoRatingLabel: UILabel!
    
    var movieDetailInfo : Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoImageView.image = movieDetailInfo!.image
        infoTitleLabel.text = movieDetailInfo!.name
        infoMakerLabel.text = movieDetailInfo!.maker
        infoRatingLabel.text = String(movieDetailInfo!.rating)
    }
    
    
}

