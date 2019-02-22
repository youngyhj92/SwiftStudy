//
//  NewTestViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 22/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class NewTestViewController : UIViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newTestView = NewTestView.instanceFromNib()
        newTestView.frame = self.view.frame
        self.view.addSubview(newTestView)
    }
    
}
