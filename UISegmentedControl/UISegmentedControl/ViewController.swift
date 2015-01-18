//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by 金成林 on 15/1/18.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mSegmentedControl: UISegmentedControl!
    @IBOutlet weak var mSegmentedControlOne: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        mSegmentedControl.setImage(UIImage(named: "icon_mark"), forSegmentAtIndex: 0)
        //添加segment
        mSegmentedControl.insertSegmentWithImage(UIImage(named: "icon_mark")!, atIndex: 0, animated: false)
        mSegmentedControl.insertSegmentWithTitle("hello", atIndex: 1, animated: false)
        //删除segment
        mSegmentedControl.removeSegmentAtIndex(0, animated: false)
//        mSegmentedControl.removeAllSegments()
        //选择enabled
//        mSegmentedControl.setEnabled(false, forSegmentAtIndex: 0)
        //调整位置
//        mSegmentedControl.setContentOffset(CGSize(width: 0, height: 100), forSegmentAtIndex: 0)
//        mSegmentedControl.setWidth(CGFloat(10.0), forSegmentAtIndex: 0)
        
        /*
        设置自定义样式
        */
        //设置背景图
        mSegmentedControlOne.setBackgroundImage(UIImage(named: "background_normal")!, forState: UIControlState.Normal, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setBackgroundImage(UIImage(named: "background_selected")!, forState: UIControlState.Selected, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setBackgroundImage(UIImage(named: "background_highlighted")!, forState: UIControlState.Highlighted, barMetrics: UIBarMetrics.Default)
        
        //设置分割线
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftnormal_rightnormal")!, forLeftSegmentState: UIControlState.Normal, rightSegmentState: UIControlState.Normal, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftnormal_rightselected")!, forLeftSegmentState: UIControlState.Normal, rightSegmentState: UIControlState.Selected, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftnormal_righthighlighted")!, forLeftSegmentState: UIControlState.Normal, rightSegmentState: UIControlState.Highlighted, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftselected_rightnormal")!, forLeftSegmentState: UIControlState.Selected, rightSegmentState: UIControlState.Normal, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftselected_rightselected")!, forLeftSegmentState: UIControlState.Selected, rightSegmentState: UIControlState.Selected, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_leftselected_righthighlighted")!, forLeftSegmentState: UIControlState.Selected, rightSegmentState: UIControlState.Highlighted, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_lefthighlighted_rightnormal")!, forLeftSegmentState: UIControlState.Highlighted, rightSegmentState: UIControlState.Normal, barMetrics: UIBarMetrics.Default)
        mSegmentedControlOne.setDividerImage(UIImage(named: "divider_lefthighlighted_rightselected")!, forLeftSegmentState: UIControlState.Highlighted, rightSegmentState: UIControlState.Selected, barMetrics: UIBarMetrics.Default)
                
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

