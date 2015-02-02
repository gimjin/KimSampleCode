//
//  MyTableViewCell.swift
//  UITableView
//
//  Created by 金成林 on 15/1/30.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // 初始化界面数据
        let mLabel = UILabel(frame: CGRectMake(0, 0, 100, 50))
        mLabel.text = "hello test"
        self.contentView.addSubview(mLabel)
        
        self.accessoryType = UITableViewCellAccessoryType.DetailButton
        self.editingAccessoryType = UITableViewCellAccessoryType.Checkmark
        
        // 更多方法继续研究
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
