//
//  ViewController.swift
//  UITextField
//
//  Created by 金成林 on 15/1/19.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let mUITextField = UITextField()
        mUITextField.frame = CGRectMake(0,0,200,200)
        mUITextField.borderStyle = UITextBorderStyle.None
        mUITextField.background = UIImage(named: "background") // UITextBorderStyle.RoundedRect时背景不生效
        mUITextField.disabledBackground = UIImage(named: "background_disabled")
//        mUITextField.enabled = false
        self.view.addSubview(mUITextField)
        
        mUITextField.leftView = UIImageView(image: UIImage(named: "background_disabled"))
        mUITextField.leftViewMode = UITextFieldViewMode.Always
//        mUITextField.leftViewRectForBounds(CGRectMake(0, 0, 20, 20)) // 不能直接使用，重写子类的时候可用
        
        mUITextField.text = "Hello World!aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
        mUITextField.placeholder = "请输入文字～"
//        mUITextField.clearsOnBeginEditing = true //点击时清空输入框原来的文字
        mUITextField.clearsOnInsertion = true // 点击进去后输入一个字就会清空文字，但是有时候失常
        mUITextField.clearButtonMode = UITextFieldViewMode.Always //始终显示后面的删除按钮
        
        mUITextField.font = UIFont(name: "HelveticaNeue", size: 50)
        mUITextField.minimumFontSize = 10 //默认值好像不是0，最小也像是10左右
        mUITextField.adjustsFontSizeToFitWidth = true
        
        mUITextField.textColor = UIColor.greenColor()
        mUITextField.textAlignment = NSTextAlignment.Center
        
        
        /*
        attributedPlaceholder
        */
//        var mNSMutableAttributedString = NSMutableAttributedString(string: "你好世界！")
//        mNSMutableAttributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(0, 1))
//        mNSMutableAttributedString.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 0x01), range: NSMakeRange(1, 3))
////        mUITextField.attributedPlaceholder = mNSMutableAttributedString
//        mUITextField.attributedPlaceholder = mNSMutableAttributedString
//        mUITextField.attributedText = mNSMutableAttributedString
//        mUITextField.allowsEditingTextAttributes = true //默认值true，编辑后attribute会消失
        
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
        mUITextField.setTranslatesAutoresizingMaskIntoConstraints(false) //设置以Autolayout来布局, UIView.frame CGRectMake失效
        let mHConstraint = NSLayoutConstraint.constraintsWithVisualFormat("|-size-[mUITextField]-size-|", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: ["size": 50], views: ["mUITextField": mUITextField])
        //X轴上居中对齐，也可以直接喝self.view对齐
        let mVConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:|-30-[mUITextField]", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: ["size": 0], views: ["mUITextField": mUITextField])
        
        self.view.addConstraints(mHConstraint)
        self.view.addConstraints(mVConstraint)

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

