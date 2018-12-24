//
//  ViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/12.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController{
    
    @IBOutlet weak var toLogin: UIButton!
    @IBOutlet weak var toSignup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func goLogin(_ sender: Any) {
        let loginView = self.storyboard!.instantiateViewController(withIdentifier: "login")
        self.present(loginView, animated: true, completion: nil)
    }
    
    @IBAction func goSignup(_ sender: Any) {
        let signUp = self.storyboard!.instantiateViewController(withIdentifier: "signup")
        self.present(signUp, animated: true, completion: nil)
    }
}

