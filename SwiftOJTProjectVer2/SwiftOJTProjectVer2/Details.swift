//
//  Details.swift
//  SwiftOJTProjectVer2
//
//  Created by 양현준 on 11/01/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class Details : UIViewController {
    
    let movieInfo = MovieVO()
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionContents: UILabel!
    @IBOutlet var openDateContents: UILabel!
    @IBOutlet var ratingConents: UILabel!
    @IBOutlet var detailContents: UILabel!
    
    override func viewDidLoad()  {
        self.titleLabel.text = movieInfo.title
        self.descriptionContents.text = movieInfo.description
        self.openDateContents.text = movieInfo.openDate
        self.ratingConents.text = String(stringInterpolationSegment: movieInfo.rating)
        self.detailContents.text = movieInfo.detail
    }
}
