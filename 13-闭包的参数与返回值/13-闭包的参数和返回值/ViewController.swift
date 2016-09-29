//
//  ViewController.swift
//  13-闭包的参数和返回值
//
//  Created by Wei Zhou on 29/09/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        需求:
        1.在控制器的View上添加一个UIScrollview, 然后在UIScrollview上添加15个按钮, 让按钮平铺
        2.要求创建UIScrollview以及按钮通过一个方法来创建
         2.1并且按钮的个数必须通过闭包来指定
         2.2并且如何创建按钮也必须通过闭包来指定(UIScrollview上面添加什么控件通过闭包传递)
        */
        
        // 1.创建UIScrollView
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 50))
        scrollView.backgroundColor = UIColor.init(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
        
        // 2.通过循环创建15个按钮
        let count = 15
        let width: CGFloat = 100
        let height: CGFloat = scrollView.bounds.height
        
        for i in 0..<count
        {
            let btn = UIButton()
            btn.setTitle("Button\(i)", for: UIControlState.normal)
            btn.frame = CGRect(x: CGFloat(i) * width, y: 0, width: width, height: height)
            btn.backgroundColor = UIColor.init(red: 0.55, green: 0.87, blue: 0.99, alpha: 1.00)
            
            // 3.将按钮添加到UIScrollview上
            scrollView.addSubview(btn)
        }
        
        scrollView.contentSize = CGSize(width: CGFloat(count) *  width, height: height)
        
        // 4.将UIScrollview添加到控制器view上
        view.addSubview(scrollView)
    }

}

