//
//  ViewController.swift
//  UIProgressView
//
//  Created by 金成林 on 15/1/21.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mProgress = UIProgressView(progressViewStyle: UIProgressViewStyle.Bar)
        mProgress.frame = CGRectMake(50, 100, 200, 200)
        // 无任何效果，应该是IOSbug，代替方案适用UISlider ＋ UISlider.userInteractionEnabled方案
        mProgress.trackImage = UIImage(named: "icon_download")
        mProgress.progressImage = UIImage(named: "icon_download")
        mProgress.tintColor = UIColor.orangeColor()
        mProgress.trackTintColor = UIColor.blackColor()
        mProgress.progress = 0.5
        self.view.addSubview(mProgress)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

