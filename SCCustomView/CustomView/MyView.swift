//
//  MyView.swift
//  CSCustomView
//
//  Created by 金成林 on 15/1/25.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

@IBDesignable
class MyView: UIView {

    /*******************************
               制作方法
      File > New > Target... > Framework & Library > Cocoa Touch Framework
      storyboard拖拽View到面板上，选择View 后选择Custom Class 指向MyView
    *******************************/
    
    /*******************************
                View Layer
     *******************************/
    @IBInspectable var viewBorderWidth: CGFloat = 6 {
        didSet {
            layer.borderWidth = viewBorderWidth
        }
    }
    @IBInspectable var viewBorderColor: UIColor = UIColor.redColor() {
        didSet {
            layer.borderColor = viewBorderColor.CGColor
        }
    }
    @IBInspectable var viewCornerRadius: CGFloat = 10 {
        didSet {
            layer.cornerRadius = viewCornerRadius
        }
    }
    
    func setCustomLayer() {
        // 初始化界面数据
        layer.borderWidth = viewBorderWidth
        layer.borderColor = viewBorderColor.CGColor
        layer.cornerRadius = viewCornerRadius
    }
    
    /*******************************
             Add custom view
     *******************************/
    var myButton: UIButton!
    
    @IBInspectable var buttonTitle: String = "Button" {
        didSet {
            myButton.setTitle(buttonTitle, forState: UIControlState.Normal)
        }
    }
    @IBInspectable var buttonTitleColor: UIColor = UIColor.blackColor() {
        didSet {
            myButton.setTitleColor(buttonTitleColor, forState: UIControlState.Normal)
        }
    }
    @IBInspectable var buttonFrame: CGRect = CGRectMake(0, 0, 80, 30) {
        didSet {
            myButton.frame = buttonFrame
        }
    }
    
    func addCustomButton() {
        
        // 初始化界面数据
        myButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
        myButton.frame = buttonFrame
        myButton.setTitle(buttonTitle, forState: UIControlState.Normal)
        myButton.setTitleColor(buttonTitleColor, forState: UIControlState.Normal)
        addSubview(myButton)
        
    }
    
    /*******************************
                   Init
     *******************************/
    override init(frame: CGRect) {
        
        // call super initializer
        super.init(frame: frame)
        
        setCustomLayer()
        addCustomButton()
        println("init")
        
    }
    // 为什么写 required 查看SCSwift 中为什么写 required init(coder aDecoder: NSCoder)
    required init(coder aDecoder: NSCoder) {
        
        // call super initializer
        super.init(coder: aDecoder)
        
        setCustomLayer()
        addCustomButton()
        println("Decoder")
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        println("layoutSubviews")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        println("awakeFromNib")
    }
    
    
}