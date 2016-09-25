//: Playground - noun: a place where people can play

import UIKit

/*:
创建对象
* OC:    [[UIView alloc] init]  [[UIView alloc] initWithFrame:]
* Swift: UIView()               UIView(frame: )
* 从OC转换为Swift的规律: alloc initXXX  --> (xxxx:)

分号
* 在OC中每一条语句后面必须跟上一个;, Swift中如果一行只有一条语句, 那么;可以省略

调用方法
* OC:   [UIColor redColor];
* Swift: UIColor.redColor()

枚举
* OC: UIButtonTypeContactAdd
* Swift: UIButtonType.ContactAdd
*/

class ViewController: UIViewController {
    @IBOutlet weak var roundedCornerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        roundedCornerButton.layer.cornerRadius = 40
    }
}

// 1.创建UIView
let customView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 567))
customView.backgroundColor = UIColor.init(red: 0.55, green: 0.87, blue: 0.99, alpha: 1)
customView.layer.cornerRadius = 4


// 2.创建一个按钮
let btn = UIButton(type: .infoLight)
btn.center = CGPoint(x: 160, y: 250)


// 3.创建一个文本
let textView = UITextView(frame: CGRect(x: 15, y: 20, width: 290, height: 160))
textView.text = "HELLO CHACHA"
textView.font = UIFont(name: "Helvetica Neue", size: 20)
textView.layer.cornerRadius = 4
textView.textAlignment = NSTextAlignment.center
textView.textColor = UIColor.init(red: 0.55, green: 0.87, blue: 0.99, alpha: 1)
textView.backgroundColor = UIColor.init(red: 0.98, green: 0.98, blue: 0.98, alpha: 1.00)


// 4.将按钮添加到UIView上
customView.addSubview(textView)


