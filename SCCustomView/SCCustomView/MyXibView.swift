//
//  MyXibView.swift
//  SCCustomView
//
//  Created by 金成林 on 15/1/27.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

/*
把这个类绑定到MyXibView.xib中的View的Custom class里面
*/
class MyXibView: UIView {

    func addMyView() {
        let mUITextField = UITextField()
        mUITextField.frame = CGRectMake(0,0,50,20)
        mUITextField.borderStyle = UITextBorderStyle.RoundedRect
        //        mUITextField.enabled = false
        self.addSubview(mUITextField)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addMyView()
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        addMyView()
    }

}
