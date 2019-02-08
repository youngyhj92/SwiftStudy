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
        sleep(2)
        if(checkLogin())  {
            //Main Page Load
            guard let mainView = self.storyboard?.instantiateViewController(withIdentifier: "mainView") else {
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
