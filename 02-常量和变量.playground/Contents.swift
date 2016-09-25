//: Playground - noun: a place where people can play

import UIKit

/*:
常量和变量
* 变量: var
* 常量: let
* 格式: 修饰符 变量/常量名称: 数据类型 = 值

数据类型
* 只要将OC中的数据类型第一个字母转换为大写, 就是Swift中的数据类型

注意点:
* 在Swift开发中, 一般情况下先用let, 只要需要修改数据时才用var, 使用let的好处, 可以避免数据被修改, 可以保证数据安全性
*/

var number: Int = 60
number = 50

let number2: Int = 88
//number2 = 55


/*:
类型推导:
* Swift中如果在定义变量/常量时进行初始化, 那么数据类型可以不用写, 系统会自动根据右边的复制推导出变量/常量的类型
* Swift开发中能不写数据类型就不写数据类型, 尽量使用编译器的自动推导
* 只有当我们需要明确的指定数据的长度, 获取需要先定义再初始化时才明确的指定数据类型
* 使用自动类型推导好处: 大大降低代码中的冗余代码
*/

let number3 = 10.10

var number4: Int
number4 = 99


/*:
类型转换:
* OC中有显示转换和隐式转换  double value = 10.1 + 9
* Swift中只有显示转换没有隐式转换, 也就是说只有相同类型的数据才能进行赋值和计算
*/

// 只有相同数据类型才能赋值
let number5: Int = Int(55.5)

// 只有相同数据类型才能进行运算
let number6 = 10
let number7 = 88.8
let sum = Double(number6) + number7

// CGFloat --> double

let size = CGSize(width: 80, height: 100)
let number8 = 10.1
let sum2 = size.width + CGFloat(number8)



