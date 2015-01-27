//
//  ViewController.swift
//  SCCustomView
//
//  Created by 金成林 on 15/1/25.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         加载XIB为UIView，并添加到UIViewController的子UIView中
        */
        var mXibArray: NSArray = NSBundle.mainBundle().loadNibNamed("MyXibView", owner: self, options: nil)
        var mXibView: UIView = mXibArray.lastObject as UIView
        self.view.addSubview(mXibView)
        
        /*
         定位
        */
        mXibView.setTranslatesAutoresizingMaskIntoConstraints(false)
        let mHConstraint = NSLayoutConstraint.constraintsWithVisualFormat("H:[mXibView(==100)]", options: NSLayoutFormatOptions.AlignAllBaseline, metrics: nil, views: ["mXibView": mXibView])
        //Warring "V:[mView]-[mXibView]-size-|" 千万不能写成 "V:|-[mView]-[mXibView]-size-|" 因为这些描述只是针对mXibView
        let mVConstraint = NSLayoutConstraint.constraintsWithVisualFormat("V:[mView]-[mXibView]-size-|", options: NSLayoutFormatOptions.AlignAllLeft, metrics: ["size": 20], views: ["mXibView": mXibView, "mView": mView])
        self.view.addConstraints(mHConstraint)
        self.view.addConstraints(mVConstraint)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

