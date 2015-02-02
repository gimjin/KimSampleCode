//
//  MyUIViewController.swift
//  UITableView
//
//  Created by 金成林 on 15/1/31.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import UIKit

class MyUIViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mTableView: MyUITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        mTableView.dataSource = self
        mTableView.delegate = self
//        mTableView.editing = true  // mTableView.setEditing(true, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /************************************
     UITableViewDelegate Delegate Start
    ************************************/
    // 设置cell高度, 不要做很多数据算法会影响滑动性能，尽可能从数组里面获取返回来保证相同时间返回
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(indexPath.row >= 10) {
            return 80.0
        }
        return 40.0
    }
    // 看滚动条并不是按照heightForRowAtIndexPath的高度来创建，效果主要用scroll长度来看
    // 预计每个cell的高度.Table View 在每次 reload data 时都会要所有 cell 的高度！这就是说你有一百行 cell，就像代理要100次每个cell 的高度，而不是当前屏幕显示的cell 的数量的高度！虽然在 iOS 7 下多了计算 cell 高度的方法，但是减少 计算高度时的时间，对于提升加载 Table View 的速度有非常明显的提高！
//    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 100.0
//    }
    // 缩进cell，但无效果
    func tableView(tableView: UITableView, indentationLevelForRowAtIndexPath indexPath: NSIndexPath) -> Int {
        return indexPath.row
    }
    // 显示cell时
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor.yellowColor()
        } else {
            cell.backgroundColor = UIColor.grayColor()
        }
    }
    // 添加按钮
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        let delButton = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "删除") { (action, indexPath) -> Void in
            println("点击删除")
        }
        let topButton = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "置顶") { (action, indexPath) -> Void in
            println("点击置顶")
        }
        let moreButton = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "更多") { (action, indexPath) -> Void in
            println("点击更多")
        }
        return [delButton, topButton, moreButton]
    }
    // UITableViewCell 的 self.accessoryType = UITableViewCellAccessoryType.DetailButton 的时候才会有效果，cell右侧出现叹号
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        println("点击cell右侧按钮")
    }
    // 指定cell被选中
    func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        println("如果此方法返回Nil， didSelectRowAtIndexPath不会只执行")
        return indexPath
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("点击\(indexPath.row)行")
    }
//    // 指定cell被取消选中（indexPath单选／nil多选）
//    func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        println("返回nil为多选，返回indexPath为单选")
//        return indexPath
//    }
//    // 指定cell取消被选中时调用
//    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        println("\(indexPath)行取消选中, 但好像有BUG启动willDeselect时此方法无效")
//    }
    // 自定义Header, 同理也可以自定义Footer(viewForFooterInSection)
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let v = UIView(frame: CGRectMake(0, 0, 100, 30))
        v.backgroundColor = UIColor.redColor()
        return v
    }
    // 自定义Header高度，同理也可以自定义Footer
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    // 预计Header的高度，如果返回数字非常大（如：1000）滚动条上会体现，同理Footer也可以设置
    func tableView(tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 40.0
    }
    // 现实Header之前被调用，同理Footer也可以
    func tableView(tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        println("马上要现实Header啦，赶紧对Header做一些操作吧")
    }
    
    
    
    /************************************
     UITableViewDelegate Delegate End
    ************************************/
    
    
    /************************************
     UITableViewDataSource Delegate Start
     ************************************/
    
    // 设置组数（NSIndexPath中section）
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    // 设置每一组的行数（NSIndexPath中Row）
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50
    }
    
    // 设置每一行显示的内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        println("\(indexPath)")
        var mCell = MyTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "\(indexPath)")
        return mCell
    }
    // A-Z
    func sectionIndexTitlesForTableView(tableView: UITableView) -> [AnyObject]! {
        // [arr addObject:@"{search}"] 等价于 [arr addObject:UITableViewIndexSearch]
        // Unicode符号 http://unicode.org/charts/
        return ["{search}", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#"]
    }
    // 与上面A－Z一起使用，title为A时滚动到A开头的列表位置
    func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int {
        // 滚动到指定位置
        tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: 2, inSection: 1), atScrollPosition: UITableViewScrollPosition.None, animated: true)
        return index
    }
    // 设置表格Header，table样式为Plain时，每个Header会滚动时卡在最上面
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Header"
    }
    // 顾名思义
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Footer"
    }
    
    // 往左滑动个cell出现删除按钮
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        println("删除")
    }
    // 与上面方法一起使用，true允许出现删除按钮
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // 每一行是否可以编辑，如果为false commitEditingStyle滑动出现Delete关闭
        return true
    }
    // 进入编辑模式（UITableView.editing = true）后，可以拖拽cell换位置
    func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        // 前提是开启编辑模式 UITableView.editing = true
        println("移动")
    }
    // 与上面一起使用，true允许出现拖拽图标
    func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    /************************************
     UITableViewDataSource Delegate End
    ************************************/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
