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
        setTitle
        */
        mButton.setTitle("Button Normal", forState: UIControlState.Normal)
        // 长按按钮后最后会进入Highlighted状态
        mButton.setTitle("Button Highlighted", forState: UIControlState.Highlighted)
        // 已选择状态 Radiobutton会用上，在按钮上好像用不上
//        mButton.selected = true
//        mButton.setTitle("Button Selected", forState: UIControlState.Selected)
//        mButton.enabled = false
//        mButton.setTitle("Button disabled", forState: UIControlState.Disabled)
        
        /*
        setTitleColor 设置文字颜色
        */
        //设置高亮时背景图不会变灰
        mButton.adjustsImageWhenHighlighted = false
        mButton.setTitleColor(UIColor.orangeColor(), forState: UIControlState.Highlighted)
        mButton.setTitleShadowColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        
        /*
        setBackgroundImage 设置背景图片
        */
        mButton.setBackgroundImage(UIImage(named: "icon@x2"), forState: nil)
        // 按钮中间会有白色光晕发光，之前在天气预报应用中体现过
        mButton.showsTouchWhenHighlighted = true
        
        /*
        setAttributedTitle
        属性文字，更多请看UILabelNSMutableAttributedString
        */
        var mNSMutableAttributedString = NSMutableAttributedString(string: "你好世界！")
        mNSMutableAttributedString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 60.0)!, range: NSMakeRange(0, 1))
        mButtonOne.setAttributedTitle(mNSMutableAttributedString, forState: UIControlState.Normal)
        
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

