//
//  Chacha.swift
//  11-构造函数
//
//  Created by Wei Zhou on 27/09/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class Chacha: NSObject {
    
    // Swift中要求在创建一个类时必须给这个类中所有的属性进行初始化
    // 如果不能在创建对象时给这个类中所有的属性进行初始化, 那么这些属性必须是可选的
    // 如果已经在构造方法中对所有的属性进行了初始化, 那么这些属性就可以不是可选类型
    // 在给某一个类指定属性的数据类型时, 如果该属性是对象类型, 那么可以指定为可选类型
    
    var name: String?
    
    // 如果属性是基本数据类型, 并且是可选类型, 系统不会自动分配存储空间
    var age: Int = 0
    
    // Chacha()
    override init() {
        // 注意: 在构造方法中必须先初始化本类再初始化父类
        name = "Chacha"
        age = 22
        
        // 当我们重写一个类的构造方法时, 系统内部会悄悄咪咪的帮我们调用super.init()
        super.init()
    }
    
    // 自定义构造方法
    init(name: String, age: Int) {
        self.name = "Chacha"
        self.age = 22
//        以下这一句代码, 能不写就不写
//        super.init()
    }
    
    init(dict: [String: AnyObject]) {
        // 注意:Swift中如果想在构造方法中使用KVC转换模型, 必须先调用 super.init()
        // 调用 super.init()的目的主要是为了给对象分配存储空间
        super.init()
        setValuesForKeys(dict)
    }
    
    // Swift中打印对象会调用下面这个属性
    override var description: String {
        let property = ["name", "age"]
        let dict = dictionaryWithValues(forKeys: property)
        return "\(dict)"
    }
}




