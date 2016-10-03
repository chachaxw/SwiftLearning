//
//  ViewController.swift
//  16-单例
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("这是一个单例", NetworkTools.self, NetworkTools.shareInstance)
    }

}

