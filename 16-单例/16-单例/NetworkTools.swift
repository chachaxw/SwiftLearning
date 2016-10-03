//
//  NetworkTools.swift
//  16-单例
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class NetworkTools: NSObject {
    
//    static let _instance: NetworkTools = NetworkTools()
//    
//    class func shareNetworkTools() -> NetworkTools {
//        return _instance
//    }
//    
//    override init() {
//        print("chacha")
//    }
 
    // 如果在Swift中编写单例, 推荐使用如下写法
    // 而且苹果有统一的命名规范, 但凡是单例统一是用shareInstance
    static let shareInstance: NetworkTools =  NetworkTools()
    
}
