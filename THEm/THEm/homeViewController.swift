//
//  homeViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/15.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth
import Firebase

class homeViewController: UIViewController {

    @IBOutlet weak var underImage: UIImageView!
    @IBOutlet weak var loadedImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    
    let db = Firestore.firestore()

    override func viewDidLoad() {
        super.viewDidLoad()
        var ref: DocumentReference? = nil
        loadedImage.image = UIImage(named:"石原さとみ.jpg")
   
        db.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
}

