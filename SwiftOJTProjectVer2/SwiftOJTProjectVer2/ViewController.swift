//
//  ViewController.swift
//  SwiftOJTProjectVer2
//
//  Created by 양현준 on 08/01/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
                self.navigationController?.pushViewController(mainView, animated: true)
                
            } else {
                let checkAlertDialog = AlertDialog(alertMessage: "Please, Check ID and Password")
                self.present(checkAlertDialog,animated: false)
            }
        }
    }
    
    //스크린을 터치할 때 키보드가 사라지게 함.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //AlertDialog 실행
    func AlertDialog (alertMessage : String) -> UIAlertController  {
        let alertDialog = UIAlertController(title: "Login Failed", message: alertMessage , preferredStyle: UIAlertController.Style.alert)
        let checkedButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alertDialog.addAction(checkedButton)
        
        return alertDialog
    }
}
