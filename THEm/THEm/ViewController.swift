//
//  ViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/12.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var selectedTextField: UITextField?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textFieldInit()
        
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (authResult, error) in
            guard let user = authResult?.user else { return }
        }
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
            if error != nil {
                print("ログインできませんでした")
            }
            else {
                let goChoose = self.storyboard!.instantiateViewController(withIdentifier: "chooseThem")
                self.present(goChoose, animated: true, completion: nil)
                print("ログインできました")
                print("\(self.email)")
                print("\(self.password)")
            }
        }
    }
    
    func textFieldInit() {
        // 最初に選択されているTextFieldをセット
        self.selectedTextField = self.email
        
        // 各TextFieldのdelegate 色んなイベントが飛んでくるようになる
        email.delegate = self
        password.delegate = self
        
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
    
}

