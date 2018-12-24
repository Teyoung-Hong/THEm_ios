//
//  chooseThemViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/14.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase
import Firebase

class chooseThemViewController: UIViewController {
    
    @IBOutlet weak var qThem: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var hdBtn: UIButton!
    @IBOutlet weak var isBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    var themTag: Int?
    
    let db = Firestore.firestore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    }

    @IBAction func choosed(_ sender: UIButton) {
        self.view.window?.backgroundColor = UIColor.red
        switch sender.tag {
        case 1:
            themTag = 1
            break
        case 2:
            themTag = 2
            break
        case 3:
            themTag = 3
        default:
            return
        }
    }
    
    
    @IBAction func toHome(_ sender: Any) {
        var ref: DocumentReference? = nil
        if themTag != nil {
            let goHome = storyboard!.instantiateViewController(withIdentifier: "home")
            self.present(goHome, animated: true, completion: nil)
            ref = db.collection("users").addDocument(data: ["ut_Tag": themTag]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    print("Document added with ID: \(ref!.documentID)")
                }
            }
        } else {
            print("Error happened")
        }
    }
    
}


//いつ登記するのか
//会社づくりしたい人、プロダクトを作りたい人はのんびり作り続ける
//成功したいためにやりたいことするのか
//最短で成功したけりゃ、時間かけないほうがいい
//最短で成功してくれ
//会社作れ、契約しろ
//登記は時間がかかる（2、3ヶ月かかる
//会社を設立する
//有名人のビデオ電話権をいくらで売り出せるか確認する。
//会社設立後にもう一回ミーティング
