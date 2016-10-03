//
//  ViewController.swift
//  18- UITableView的使用
//
//  Created by Wei Zhou on 03/10/2016.
//  Copyright © 2016 Wei Zhou. All rights reserved.
//

import UIKit

// 1.在Swift中遵守协议直接利用逗号隔开
class ViewController: UIViewController {
    
    
    override func loadView() {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        
        print("\nHello", tableView)
        view = tableView
    }
    
    // MARK: - 懒加载
    lazy var listData: [String]? = {
        return ["Hello Chacha", "Swift", "CHACHA", "Awesome", "UITableView"]
    }()

}

// extension 相当于OC的 Category
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - UITableViewDataSource
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // TODO: 有问题, 开发中不应该这样写
        return (listData?.count)!
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: 50))
        headerLabel.text = "HELLO CHACHA"
        headerLabel.textAlignment = NSTextAlignment.center
        headerLabel.font = UIFont(name: "Helvetica-Bold", size: 20)
        headerLabel.backgroundColor = UIColor.init(red: 0.24, green: 0.63, blue: 0.95, alpha: 1.00)
        
        return headerLabel
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = listData![(indexPath as NSIndexPath).row]
        
        return cell!
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = listData![(indexPath as NSIndexPath).row]
        let alertController = UIAlertController(title: "Hello", message: "你选中了\(item)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "确定", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        self.present(alertController, animated: true, completion: nil)
    }
  
}
