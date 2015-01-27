// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MyClass {
    var str:String
    init(str:String) {
        self.str = str
    }
    
    required init(coder aDecoder: NSCoder) {
        self.str = ""
    }
}

var f:Float = 1.3
var i:Int = 1
for g in 0..<1000 {
//    f + 2
    i = i + 2
}