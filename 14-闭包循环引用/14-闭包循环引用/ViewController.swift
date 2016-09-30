//
//  ViewController.swift
//  14-闭包循环引用
//
//  Created by Wei Zhou on 30/09/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 注意: 在设置闭包属性是可选类型时一定更要用一个()括住闭包的所有的类型, 否则只是指定了闭包的返回值是可选的
    // 错误写法: var callback: ()->()?
    var callback: (() -> ())?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // OC中如何解决：__weak typeof(self) weakSelf = self;
        // Swift中如何解决：weak var weakSelf = self
        // 对应关系:  __weak == weak   __unsafe_unretained == unowned
        
        loadData { [unowned self] () -> () in
            print("被回调了")
            
            // 在Swift开发中, 能不写self就不写slef
            // 一般情况下只有需要区分参数, 或者在闭包中使用
//            self.view.backgroundColor = UIColor.black
//            weakSelf!.view.backgroundColor = UIColor.black
            
            self.view.backgroundColor = UIColor.black
            
        }
        
    }
    
    func loadData(finished: @escaping () -> ()){
        callback = finished
        
        // 1.加载数据
        print("加载数据")
        
        // 2.执行回调
        finished()
    }

    // deinit 相当于OC中的dealloc方法
    // 只要一个对象释放就会调用deinit方法
    deinit {
        print("Goodbye, Chacha")
    }

}

