//
//  ViewController.swift
//  11-构造函数
//
//  Created by Wei Zhou on 27/09/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 注意: Swift开发中一般情况下不用导入头像文件, 因为只要所有的文件都在一个命名空间中那么就可以直接使用
        // 默认情况下一个项目的命名空间就是项目名称, 而在同一个项目下的所有文件都在同一个命名空间中
        
//        let p = Person()
//        let p = Person(name: "lmj", age: 50)
        
        // 如果自定义一个类, 并且没有重写构造方法, 那么系统会提供默认的构造方法
        // 如果自定义一个类, 并且自定义了构造方法, 那么系统不会提供默认的构造方法
//        let p = Person(name: "lmj", age: 50)
//        let p = Person()
        
        let p = Chacha()
        print(p)
        print(self)
    }

}

