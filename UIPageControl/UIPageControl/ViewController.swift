//
//  ViewController.swift
//  UIPageControl
//
//  Created by 金成林 on 15/1/24.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mUIPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 只有一个页面时隐藏
        mUIPageControl.hidesForSinglePage = true
        // 设置页面总数
        mUIPageControl.numberOfPages = 6
        // 选择当前页
        mUIPageControl.currentPage = 2
        
        mUIPageControl.pageIndicatorTintColor = UIColor.greenColor()
        mUIPageControl.currentPageIndicatorTintColor = UIColor.redColor()
        // 直到有时间执行完你的操作之后，才更新当前指示器当前指示页，可以将 defersCurrentPageDisPlay 设为true
//        mUIPageControl.defersCurrentPageDisplay = true
        // 执行此方法后更新指页标，与defersCurrentPageDisplay一起使用
//        mUIPageControl.updateCurrentPageDisplay()
        
        // 返回100个指示器的宽高，定制页面控制的外观，能用这个方法调整页面控制的大小，当页数改变。
        var mSize: CGSize = mUIPageControl.sizeForNumberOfPages(100)
        println(mSize)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

