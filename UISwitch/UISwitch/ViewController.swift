//
//  ViewController.swift
//  UISwitch
//
//  Created by 金成林 on 15/1/21.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 默认关闭
        mSwitch.on = false
        // 设置开启
        mSwitch.setOn(true, animated: true)
        // 开启后开关滑轨颜色
        mSwitch.onTintColor = UIColor.greenColor()
        // 关闭过程&关闭后开关滑轨颜色
        mSwitch.tintColor = UIColor.redColor()
        // 开关拖拽条颜色
        mSwitch.thumbTintColor = UIColor.blackColor()
        
        // onImage offImage 在 IOS7以上无效
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

