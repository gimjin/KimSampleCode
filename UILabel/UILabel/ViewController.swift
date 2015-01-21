//
//  ViewController.swift
//  UILabel
//
//  Created by 金成林 on 15/1/17.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mLabel: UILabel!
    @IBOutlet weak var mLabelOne: UILabel!
    @IBOutlet weak var mLabelTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mLabel.text = "Hello World!"
        mLabel.font = UIFont(name: "HelveticaNeue", size: 10.0)
        mLabel.textColor = UIColor.greenColor()
        mLabel.textAlignment = NSTextAlignment.Center
        mLabel.numberOfLines = 1;
        
        /*
        设置高亮
        */
        mLabelTwo.highlighted = true
        mLabelTwo.highlightedTextColor = UIColor.redColor()
        mLabelTwo.shadowColor = UIColor.greenColor()
        mLabelTwo.shadowOffset = CGSize(width: 10, height: 10)
        
        //不是用来调用的，只适合被UILabel子类重写
        //textRectForBounds
        //drawTextInRect
        //drawTextInRect
        
        
        /*
        ByWordWrapping 以单词为显示单位显示，后面部分省略不显示。
        ByCharWrapping 以字符为显示单位显示，后面部分省略不显示。
        ByClipping 剪切与文本宽度相同的内容长度，后半部分被删除。
        ByTruncatingHead 前面部分文字以……方式省略，显示尾部文字内容。
        ByTruncatingTail 结尾部分的内容以……方式省略，显示头的文字内容。
        ByTruncatingMiddle 中间的内容以……方式省略，显示头尾的文字内容。
        */
        mLabelOne.lineBreakMode = NSLineBreakMode.ByTruncatingHead
        mLabelOne.enabled = false
        // 本来会用...来表示无法显示的文字，但自适应后整个文字变的很小
        mLabelOne.adjustsFontSizeToFitWidth = true
        /*
        # baselineAdjustment 这个值控制文本的基线位置,只有文本行数为1和 adjustsFontSizeToFitWidth＝true时有效
        UIBaselineAdjustment.AlignBaselines 默认值 文本最上端于label中线对齐
        UIBaselineAdjustment.AlignCenters 文本中线于 label中线对齐
        UIBaselineAdjustment.None 文本最低端与label中线对齐
        */
        mLabelOne.backgroundColor = UIColor.yellowColor()
        mLabelOne.baselineAdjustment = UIBaselineAdjustment.AlignCenters
        
        /*
        minimumScaleFactor
        最小字体，也就是字体设置小于这个字体时，无效，行数为1时有效，默认为0.0
        */
//        mLabelOne.minimumScaleFactor = 10
        
        
        
        
        /*
        # 查看 NSAttributedString(NSStringDrawing)
        
        let NSFontAttributeName: NSString! 设置字体
        let NSParagraphStyleAttributeName: NSString!
        let NSForegroundColorAttributeName: NSString!
        let NSBackgroundColorAttributeName: NSString!
        let NSLigatureAttributeName: NSString!  连字 [如æ、œ、Æ、Œ等],但始终没有效果
        let NSKernAttributeName: NSString!
        let NSStrikethroughStyleAttributeName: NSString! 删除线
        let NSUnderlineStyleAttributeName: NSString! 下划线
        let NSStrokeColorAttributeName: NSString! 删除线和下划线颜色
        let NSStrokeWidthAttributeName: NSString!
        let NSShadowAttributeName: NSString!
        let NSTextEffectAttributeName: NSString!
        let NSAttachmentAttributeName: NSString!
        let NSLinkAttributeName: NSString!
        let NSBaselineOffsetAttributeName: NSString!
        let NSUnderlineColorAttributeName: NSString!
        let NSStrikethroughColorAttributeName: NSString!
        let NSObliquenessAttributeName: NSString!
        let NSExpansionAttributeName: NSString!
        let NSWritingDirectionAttributeName: NSString!
        let NSVerticalGlyphFormAttributeName: NSString! 0表示横排文字 1表示竖排文字，ios中只有横排文字
        */
        var mNSMutableAttributedString = NSMutableAttributedString(string: "你好世界！ae ce")
        mNSMutableAttributedString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 60.0)!, range: NSMakeRange(0, 1))
        mNSMutableAttributedString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(1, 1))
        //mNSMutableAttributedString.addAttribute(NSUnderlineStyleAttributeName, value: NSNumber(integer: 0x01), range: NSMakeRange(1, 3))
        mNSMutableAttributedString.addAttribute(NSStrikethroughStyleAttributeName, value: NSNumber(integer: 0x01), range: NSMakeRange(1, 3))
        mLabel.attributedText = mNSMutableAttributedString
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

