//
//  ViewController.swift
//  UISlider
//
//  Created by 金成林 on 15/1/18.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mUISlider = UISlider()
        mUISlider.minimumValue = 0
        mUISlider.maximumValue = 20
        mUISlider.setValue(10.0, animated: true)
        self.view.addSubview(mUISlider)
        mUISlider.setTranslatesAutoresizingMaskIntoConstraints(false) //设置以Autolayout来布局, UIView.frame CGRectMake失效
        
        let mButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        mButton.frame = CGRectMake(120,150,80,80) // UIView方法创建轮廓
        mButton.setTitle("测试对齐", forState: UIControlState.Normal)
        self.view.addSubview(mButton)
        mButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        /*
        NSLayoutConstraint.constraintsWithVisualFormat
        此方法与storyboard中的Add new constraints一致
        
        e.g.
        H:|-0-[mUIButton]-0-|  横向与self.view之间的距离为0
        V:|-0-[mUIButton]-0-|  纵向与self.view之间的距离为0
        [mUIButton]-20-[mUILabel]  两个控件之间的距离为20
        [mUIButton(100)]  mUIButton的宽度为100
        [button1(==button2)] 两个控件宽度一样
        [flexibleButton(>=70,<=100)] 宽度大于70小于100
        
        */
        let mHConstraint = NSLayoutConstraint.constraintsWithVisualFormat("|-size-[mUISlider]-size-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: ["size": 20], views: ["mUISlider": mUISlider])
        //X轴上居中对齐，也可以直接喝self.view对齐
        let mVConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-100-[mUISlider]-0-[mButton(100)]", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: ["size": 0], views: ["mUISlider": mUISlider, "mButton": mButton])
        
        self.view.addConstraints(mHConstraint)
        self.view.addConstraints(mVConstraint)
//        self.view.removeConstraints(mVConstraint)
        
        
        // 设置滑轨图片
        mUISlider.setMaximumTrackImage(UIImage(named: "track_max"), forState: UIControlState.Normal)
        mUISlider.setMinimumTrackImage(UIImage(named: "track_min"), forState: UIControlState.Normal)
        // 设置拖拽柄
        mUISlider.setThumbImage(UIImage(named: "thumb_normal"), forState: UIControlState.Normal)
        mUISlider.setThumbImage(UIImage(named: "thumb_highlighted"), forState: UIControlState.Highlighted)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

