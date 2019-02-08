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
    @IBOutlet var joinButton: UIButton!
    
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
            //Password Field return 버튼 클릭시 Join Button 클릭 동작
            joinButton.sendActions(for: .touchUpInside)
        } else {
            textField.resignFirstResponder()
        }
        return true
    }

    
    @IBAction func joinButtonClicked(_ sender: UIButton) {
       let checkIdentification = idVerification(id: idField.text!, password: passwordField.text!)
        if(checkIdentification)  {
        // Storyboard에서 mainView를 ID로 가진 VIewController를 객체화함.
            guard let mainViewController = self.storyboard?.instantiateViewController(withIdentifier: "mainView") else {
                print("Not access Main Page")
                return
            }
            //Scenario 1. Storyboard에서 Button과 NavigationController를 연결한 후 다음 소스 진행.
//            mainViewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//            self.navigationController?.pushViewController(mainViewController, animated: true)
            
            //Scenario 2. Storyboard에서 연결하지 않고 delegate.window.rootViewController를 변경.
            //NavigationViewController RootViewController 설정 -> 이동됨.
            let navigationController = UINavigationController(rootViewController: mainViewController)
            let appDelegate:UIApplicationDelegate = UIApplication.shared.delegate!
            appDelegate.window??.rootViewController = navigationController
        }
    }
    
    func idVerification(id:String, password:String) -> Bool  {
        if(id.isEmpty || password.isEmpty)  {
            showAlertDialog(message: "ID 혹은 Password를 입력하세요")
            return false
        } else if (id == "Wrapsody" && password == "1111")  {
            return true
        } else {
            showAlertDialog(message: "ID 혹은 Password가 올바르지 않습니다.")
            return false
        }
    }
    
    func showAlertDialog(message:String)  {
        let alertDialog = UIAlertController(title: "Login Fail", message: message, preferredStyle: UIAlertController.Style.alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
        alertDialog.addAction(alertAction)
        self.present(alertDialog,animated: false)
    }
    
    
}

