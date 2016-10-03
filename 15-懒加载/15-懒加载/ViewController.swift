//
//  ViewController.swift
//  15-懒加载
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 只有外界访问到listData的时候才会去执行闭包, 然后将闭包的返回值赋值给listData
    // 注意: 一定要记住闭包后面需要写上(), 代表执行闭包
    lazy var listData1: [String]? = {
        () -> [String] in
        print("--------\n")
        return ["Hello1", "World1", "Chacha1"]
    }()
    
    // 开发中这样写
    lazy var listData2: [Any]? = {
        print("--------\n")
        return [1, "Hello", "Chacha"]
    }()
    
    lazy var listData3: [Int]? = self.test()
    
    func test() -> [Int] {
        print("--------\n")
        return [1, 2, 3]
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(listData1)
        print(listData2)
        print(listData3)
    }

}

