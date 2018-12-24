//
//  profEditViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/11/27.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

class profEditViewController: UIViewController{
    @IBOutlet weak var nameEditField: UITextField!
    @IBOutlet weak var ageEditField: UITextField!
    @IBOutlet weak var sexEditField: UITextField!
    
    let db = Firestore.firestore()
    
    @IBOutlet weak var toProfBtn: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func editDone(_ sender: Any) {
    }
    
}
