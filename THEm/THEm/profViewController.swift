//
//  profViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/11/27.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class profViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var sexLbl: UILabel!
    @IBOutlet weak var u_name_lbl: UILabel!
    @IBOutlet weak var age_lbl: UILabel!
    @IBOutlet weak var sex_lbl: UILabel!
    @IBOutlet weak var toEditBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
    }
    
    @IBAction func toEditBtnTapped(_ sender: Any) {
        let goProfEdit = storyboard!.instantiateViewController(withIdentifier: "profEdit")
        self.present(goProfEdit, animated: true, completion: nil)
    }

    @IBAction func handleSignout(_ sender: Any) {
        try! Auth.auth().signOut()
        let signout = storyboard!.instantiateViewController(withIdentifier: "init")
        self.present(signout, animated: true, completion: nil)
    }
}
