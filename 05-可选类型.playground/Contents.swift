//: Playground - noun: a place where people can play

import UIKit


/*:
可选类型
* 什么是可选类型: 一个变量可以有值也可以没有值, 我们就称之为可选类型
* 在Swift中如果使用一个可选类型的变量/常量, 必须解包操作
* 解包: 只需要在变量/常量后面加上 !
* !含义: 代表告诉系统该变量/常量中一定有值, 如果强制解包一个没有值的常量/变量,那么会报错

* 优点: 提高代码阅读性
* 格式: 修饰符 变量名称:Optional<数据类型>
        修饰符 变量名称: 数据类型?
* 语法糖: 因为在Swift中可选类型用得非常非常多, 所以为了简化代码, Swift提供了一个语法糖, 可以用? 代替 Optional<数据类型>

提示:
对于初学者来说 ? ! 是最为头疼的语法, 刚开始的时候建议利用Xocde的语法提示来解决? !的问题
*/
//var number: Optional<Int> = nil
//var number2: Int = nil

let number: Optional<Int> = 10

print(number!)
let number2 = 10
let sum = number! + number2


let number3: Int? = 55
print(number3)

/*
可选类型注意点:
* 在开发中一般情况下尽量不要强制解包一个可选类型, 否则会引发错误
*/

//let url = NSURL(string: "http://www.chachaxw.com")
//print(url)
//let request = NSURLRequest(url: url! as URL)

let url = NSURL(string: "http://www.chachaxw.com/")
print(url)

//let request = NSURLRequest(URL: url!)
if url != nil
{
    let request = NSURLRequest(url: url! as URL)
}

// 可选绑定: 如果url不为nil, 系统内部就会自动将解包之后的值赋值给temp, 并且只有temp有值时才会执行{}中的代码
// Swift开发中推荐这种写法
if let temp = url
{
    let request = NSURLRequest(url: temp as URL)
}




