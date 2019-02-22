//
//  NewTestViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 21/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class NewTestView: UIView {

    class func instanceFromNib() -> UIView  {
        return UINib(nibName: "NewTestViewController", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }

}
