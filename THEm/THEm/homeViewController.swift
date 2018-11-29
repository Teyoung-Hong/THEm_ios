//
//  homeViewController.swift
//  THEm
//
//  Created by Teyoung Hong on 2018/10/15.
//  Copyright © 2018年 Lish Inc. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    @IBOutlet weak var underImage: UIImageView!
    @IBOutlet weak var loadedImage: UIImageView!
    @IBOutlet weak var bottomImage: UIImageView!
    var imageNum: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        imageNum = appDelegate.getImage!
        if imageNum == 3{
            loadedImage.image = UIImage(named:"石原さとみ.jpg")
            underImage.image = UIImage(named: "本田圭佑.jpg")
            bottomImage.image = UIImage(named: "前澤友作.jpg")
        } else if imageNum == 1{
            loadedImage.image = UIImage(named:"前澤友作.jpg")
            underImage.image = UIImage(named:"石原さとみ.jpg")
            bottomImage.image = UIImage(named: "本田圭佑.jpg")

        } else {
            loadedImage.image = UIImage(named: "本田圭佑.jpg")
            underImage.image = UIImage(named:"前澤友作.jpg")
            bottomImage.image = UIImage(named: "石原さとみ.jpg")

        }
    }
    
    ///override func viewWillAppear(_ animated: Bool) {
    ///}
}
