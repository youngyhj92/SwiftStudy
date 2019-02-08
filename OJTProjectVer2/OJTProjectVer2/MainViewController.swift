//
//  MainViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 07/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

struct Movie {
    var name : String
    var maker : String
    var rating : Double
}

class MainViewController : UITableViewController  {
    
    let movieData = Movie(name: "aaa", maker: "bbb", rating: 5.0)
    
    //Logout CLick
    func logoutButtonClicked(_ sender: Any) {
        let logoutCheckDialog = UIAlertController(title: "Logout", message: "Logout 하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        let logoutAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive, handler: {
            (logoutAction) in self.logout()
        })
        let logoutCalcelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        logoutCheckDialog.addAction(logoutAction)
        logoutCheckDialog.addAction(logoutCalcelAction)
        self.present(logoutCheckDialog, animated: false)
    }
    
    func logout() {
        UserDefaults.standard.removeObject(forKey: "userId")
        UserDefaults.standard.removeObject(forKey: "userPassword")
        UserDefaults.standard.removeObject(forKey: "isLogin")
        
        self.dismiss(animated: false)
    }
    
}
