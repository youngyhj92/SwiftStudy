//
//  SplashViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 08/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class SplashViewController : UIViewController  {
     
    override func viewDidAppear(_ animated: Bool) {
        sleep(1)
        if(checkLogin())  {
            //Main Page Load
            guard let mainView = self.storyboard?.instantiateViewController(withIdentifier: "viewMain") else {
                print("main Page load fail")
                return
            }
            
            mainView.modalTransitionStyle = UIModalTransitionStyle.coverVertical
            self.present(mainView, animated: true)
        } else {
            //Login Page Load
            guard let loginView = self.storyboard?.instantiateViewController(withIdentifier: "loginView") else {
                print("login Page load fail")
                return
            }
            
            loginView.modalPresentationStyle = UIModalPresentationStyle.popover
            self.present(loginView, animated: true)
        }
    }
    
    func checkLogin () -> Bool {
        let checkLogin = UserDefaults.standard.bool(forKey: "isLogin")
        if(checkLogin)  {
            return true
        } else {
            return false
        }
    }
    
}

extension String {
    var localized : String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: "\(self)", comment: "")
    }
}
