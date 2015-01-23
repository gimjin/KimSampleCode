//
//  ViewController.swift
//  UIActivityIndicatorView
//
//  Created by 金成林 on 15/1/21.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mLoading = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
        // 设置颜色
        mLoading.color = UIColor.orangeColor()
        // 动画开始
        mLoading.startAnimating()
        // 动画停止后自动消失
        mLoading.hidesWhenStopped = true
        // 动画停止
//        mLoading.stopAnimating()
        self.view.addSubview(mLoading)
        
        /*
         永远在中间显示
        */
        mLoading.setTranslatesAutoresizingMaskIntoConstraints(false) //设置以Autolayout来布局, UIView.frame CGRectMake失效
        let mHConstraint = NSLayoutConstraint.constraintsWithVisualFormat("|-[mLoading]-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["mLoading": mLoading])
        //X轴上居中对齐，也可以直接喝self.view对齐
        let mVConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-[mLoading]-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["mLoading": mLoading])
        
        self.view.addConstraints(mHConstraint)
        self.view.addConstraints(mVConstraint)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

