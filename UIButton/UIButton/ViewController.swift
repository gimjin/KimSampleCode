//
//  ViewController.swift
//  UIButton
//
//  Created by 金成林 on 15/1/17.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mButton: UIButton!
    @IBOutlet weak var mButtonOne: UIButton!
    @IBOutlet weak var mButtonTwo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        设置文字
        */
        mButton.setTitle("Button Normal", forState: UIControlState.Normal)
        // 长按按钮后最后会进入Highlighted状态
        mButton.setTitle("Button Highlighted", forState: UIControlState.Highlighted)
        //        mButton.enabled = false
        //        mButton.setTitle("Button disabled", forState: UIControlState.Disabled)
        //设置属性文字，更多请看UILabelNSMutableAttributedString
        var mNSMutableAttributedString = NSMutableAttributedString(string: "你好世界！")
        mNSMutableAttributedString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 60.0)!, range: NSMakeRange(0, 1))
        mButtonOne.setAttributedTitle(mNSMutableAttributedString, forState: UIControlState.Normal)
        
        
        /*
            设置边距 Margin
        */
        // 内容边距，不会把文字挤压掉而是会让按钮撑开
        mButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        // 如果用titleEdgeInsets就会挤压文字
//        mButton.titleEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        /*
        设置对齐 UIControl的子类都拥有此属性
        */
        mButton.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Right
        

        /*
        setTitleColor 设置文字颜色
        */
        mButton.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Highlighted)
        mButton.setTitleShadowColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        /*
        设置图片
        */
        // setBackgroundImage 设置背景图片
        mButton.setBackgroundImage(UIImage(named: "icon@x2"), forState: nil)
        // 按钮中间会有白色光晕发光，之前在天气预报应用中体现过
        mButton.showsTouchWhenHighlighted = true
        // 设置icon始终显示在文字左侧, 与showsTouchWhenHighlighted两者只能选择一个
        mButton.setImage(UIImage(named: "icon_download"), forState: UIControlState.Normal)
//        mButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -100, bottom: 0, right: 0)
        
        // button type system时才会生效：背景图片变亮
        mButton.adjustsImageWhenHighlighted = true
        
        /*
        Tint Color 会把颜色向下传递
        */
//        self.view.tintColor = UIColor.yellowColor()
//        mButtonTwo.tintColor = UIColor.blackColor()
//        mButtonTwo.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

