//
//  loginViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/11/29.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class loginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    
    var selectedTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldInit()
        
        let border1 = CALayer()
        let border2 = CALayer()
        let width = CGFloat(2.0)
        
        // border1を下線部だけに
        border1.borderColor = UIColor.gray.cgColor
        border1.frame = CGRect(x: 0, y: emailField.frame.size.height - width, width:  emailField.frame.size.width, height: 1)
        border1.borderWidth = width
        // border2を下線部だけに
        border2.borderColor = UIColor.gray.cgColor
        border2.frame = CGRect(x: 0, y: passwordField.frame.size.height - width, width:  passwordField.frame.size.width, height: 1)
        border2.borderWidth = width
        
        emailField.layer.addSublayer(border1)
        passwordField.layer.addSublayer(border2)
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        guard let email = emailField.text else { return }
        guard let pass = passwordField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: pass) { user, error in
            if error == nil && user != nil {
                let goHome = self.storyboard!.instantiateViewController(withIdentifier: "home")
                self.present(goHome, animated: true, completion: nil)
                
            } else {
                print("Error login in: \(error!.localizedDescription)")
            }
        }
    }
    
    // テキストフィールドのデリゲートの初期設定
    func textFieldInit() {
        // 最初に選択されているTextFieldをセット
        self.selectedTextField = self.emailField
        // 各TextFieldのdelegate 色んなイベントが飛んでくるようになる
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // 選択されているTextFieldを更新
        self.selectedTextField = textField
    }
    
    // リターンが押された時
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // キーボードを閉じる
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
        let backInit = self.storyboard!.instantiateViewController(withIdentifier: "init")
        self.present(backInit, animated: true, completion: nil)
    }
}
