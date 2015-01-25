//
//  ViewController.swift
//  UIStepper
//
//  Created by 金成林 on 15/1/24.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mUIStepper: UIStepper!
    @IBOutlet weak var mUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //设定stepper的范围与起始值
        mUIStepper.minimumValue = 0
        mUIStepper.maximumValue = 10
        mUIStepper.stepValue = 1
        //设定stepper是否循环（到最大值时再增加数值最从最小值开始）
        mUIStepper.wraps = true
        //默认true，true时表示当用户按住时会持续发送ValueChange事件，false则是只有等用户交互结束时才发送ValueChange事件
        mUIStepper.continuous = true
        //默认true，true时表示按住加号或减号不松手，数字会持续变化
        mUIStepper.autorepeat = true
        
        mUIStepper.addTarget(self, action: "stepperValueIschanged", forControlEvents: UIControlEvents.ValueChanged)
        
    }
    
    func stepperValueIschanged() {
        // Double 转 String
        mUILabel.text = "\(mUIStepper.value)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

