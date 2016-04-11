//
//  ViewController.swift
//  UseExtensionSampleWiki
//
//  Created by 矢野史洋 on 2016/04/11.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    private var myLabel1: UILabel!
    private var myLabel2: UILabel!
    var text1: String!
    var text2: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellowColor()
        
        //拡張を使ってViewController名を取得
        text1 = String.className(ViewController2)
        text2 = String.className(ViewController)
        
        myLabel1 = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel1.backgroundColor = UIColor.orangeColor()
        myLabel1.layer.masksToBounds = true
        myLabel1.layer.cornerRadius = 20.0
        myLabel1.text = text1
        myLabel1.textColor = UIColor.whiteColor()
        myLabel1.textAlignment = NSTextAlignment.Center
        myLabel1.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        myLabel2 = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel2.backgroundColor = UIColor.orangeColor()
        myLabel2.layer.masksToBounds = true
        myLabel2.layer.cornerRadius = 20.0
        myLabel2.text = text2
        myLabel2.textColor = UIColor.whiteColor()
        myLabel2.textAlignment = NSTextAlignment.Center
        myLabel2.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        
        self.view.addSubview(myLabel1)
        self.view.addSubview(myLabel2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

