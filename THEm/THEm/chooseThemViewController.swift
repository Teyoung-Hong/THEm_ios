//
//  chooseThemViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/14.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit

class chooseThemViewController: UIViewController {
    
    @IBOutlet weak var qThem: UILabel!
    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var hdBtn: UIButton!
    @IBOutlet weak var isBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    var btnString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    }

    @IBAction func myBtnTapped(_ sender: Any) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.getImage = 1
        myBtn.setTitleColor(UIColor.red, for: [])

        print(appDelegate.getImage)
    }
    
    @IBAction func hkBtnTapped(_ sender: Any) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.getImage = 2
        hdBtn.setTitleColor(UIColor.red, for: [])

        print(appDelegate.getImage)
        }
    
    @IBAction func isBtnTapped(_ sender: Any) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.getImage = 3
        isBtn.setTitleColor(UIColor.red, for: [])

        print(appDelegate.getImage)
    }
    
    @IBAction func toHome(_ sender: Any) {
        let goHome = storyboard!.instantiateViewController(withIdentifier: "home")
        self.present(goHome, animated: true, completion: nil)
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
