//
//  ViewController.swift
//  OJTProjectVer2
//
//  Created by 양현준 on 01/02/2019.
//  Copyright © 2019 hj.yang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var idField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // delegate 사용자 지정 - 현재 클래스에서 위임자로 진행하겠다고 지정함. ("Event가 발생하면 protocol에 따라 응답을 보내줄꼐")
        self.idField.delegate = self
        self.passwordField.delegate = self
    }
    
    //UITextField Delegate에 지정되어있는 function
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField.isEqual(self.idField))  {
            // passwordField로 cursor Focus 이동
            self.passwordField.becomeFirstResponder()
        } else if(textField.isEqual(self.passwordField))  {
            self.passwordField.resignFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }

    
    @IBAction func joinButtonClicked(_ sender: UIButton) {
        print("pressed")
    }
    
    
}

