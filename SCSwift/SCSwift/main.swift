//
//  main.swift
//  SCSwift
//
//  Created by 金成林 on 15/1/23.
//  Copyright (c) 2015年 Kim. All rights reserved.
//

import Foundation

/***************************************
 Protocol & Delegate LIKE Java Interface
 ***************************************/
class Animal: NSObject {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }

}
//不同的动物移动方式不一样不能用类和继承来实现，这时候使用Protocol Delegate仅定义方法名称
protocol AnimalDelegate: NSObjectProtocol {
    func move(legNumber: NSInteger)
}

class Cat: Animal, AnimalDelegate {
    func move(legNumber: NSInteger) {
        println("\(self.name)正在用\(legNumber)脚移动")
    }
}

class Fish: Animal, AnimalDelegate {
    func move(legNumber: NSInteger) {
        println("\(self.name)正在用\(legNumber)脚水中游动")
    }
}

var mCat = Cat(name: "加菲")
mCat.move(2)
var mFish = Fish(name: "金鱼")
mFish.move(0)

/***************************************
元组(tuple) 结构体(Struct) 枚举（Enums）

Swift有许多种存储数据方式,你可以用枚举(enums),元组(tuples),结构体(structs),类(classes)

***************************************/

// 元祖
let money = (amount: 100, currency: "USD") //let money=(100,"EUR")
let currency = money.currency //let currency = money.1 // "EUR"
func format(input: (Int, String)) ->String {
    return "I have \(input.0) \(input.1) in my wallet"
}
println("Tuple: \(format(money))")

// Class & Struct 相同点：有初始化函数，都可以用协议
// Class & Struct 不同点：类有继承，类有西沟函数，类可以用多重引用
struct Money {
    let amount: Int
    let currency: String
}
extension Money { //扩展结构体
    func mFormat() -> String {
        return "I have \(self.amount) \(self.currency) in my wallet"
    }
}
let mMoney = Money(amount: 100, currency: "USD")
println("Struct: \(mMoney.mFormat())")

// 枚举1
enum Currency {
    case EUR
    case USD
    case YEN
}
extension Currency {
    func symbol() -> String {
        switch self {
        case .EUR: return "€"
        case .USD: return "$"
        case .YEN: return "¥"
        }
    }
}
println(Currency.EUR.symbol())

//枚举2
enum Sex: Int {
    case Male = 1
    case Female = 0
}
var kimSex = Sex.Female //性别设置成女性
kimSex = .Male //第二次赋值只用. 即可




/***************************************
每次都要写 required init(coder aDecoder: NSCoder) 的原因
    查看Part I Welcome to Swift > Required Initializers，父类有必须要实现的init方法时用了required修饰符，子类也必须实现
    http://www.devtalking.com/articles/swift-required/
***************************************/

class MyClass {
    var str:String
    init(str:String) {
        self.str = str
    }
    
    required init(coder aDecoder: NSCoder) {
        self.str = ""
    }
}

class MySubClass:MyClass {
    override init(str:String) {
        super.init(str:str)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




