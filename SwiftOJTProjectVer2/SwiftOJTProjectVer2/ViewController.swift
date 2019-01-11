//
//  ViewController.swift
//  SwiftOJTProjectVer2
//
//  Created by 양현준 on 08/01/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userId: UITextField!
    @IBOutlet var userPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.userId.becomeFirstResponder()
    }
    
    @IBAction func onClickLoginButton(_ sender: Any) {
        if((userId.text?.isEmpty)!)  {
            let emptyIdAlertDialog = AlertDialog(alertMessage: "Please, Insert ID")
            self.present(emptyIdAlertDialog,animated: false)
        } else if((userPassword.text?.isEmpty)!) {
            let emptyPasswordAlertDialog = AlertDialog(alertMessage: "Please, Insert Password")
            self.present(emptyPasswordAlertDialog,animated: false)
        } else {
            if(userId.text == "wrapsody" && userPassword.text == "1111")  {
                let mainView = self.storyboard!.instantiateViewController(withIdentifier: "MainView")
                mainView.modalTransitionStyle = UIModalTransitionStyle.coverVertical
                self.present(mainView, animated: false)
                
            } else {
                let checkAlertDialog = AlertDialog(alertMessage: "Please, Check ID and Password")
                self.present(checkAlertDialog,animated: false)
            }
        }
    }
    
    
    func AlertDialog (alertMessage : String) -> UIAlertController  {
        let alertDialog = UIAlertController(title: "Login Failed", message: alertMessage , preferredStyle: UIAlertController.Style.alert)
        let checkedButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alertDialog.addAction(checkedButton)
        
        return alertDialog
    }
}
