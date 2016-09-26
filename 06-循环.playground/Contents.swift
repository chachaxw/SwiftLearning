//: Playground - noun: a place where people can play

import UIKit


/*:
* 传统for
* 基本用法和OC一致
* for后面的()可以省略
* for后面的{}不可用省略
* Swift开发中不建议使用传统for循环，并且Swift3移除了下面这种形式的循环
*/
//for var i = 0; i < 10; i++
//{
//    print(i)
//}

//for ;;
//{
//    print("---")
//}

// Swift开发中推荐的for循环格式
for i in 0..<10
{
    print(i)
}

/*:
* while
* 基本用法和OC一致
*/
var number = 0
while number < 10
{
    print(number)
// Swift3中，移除了++这种形式的自增
//  number++
    number += 1
}


/*:
do while
* 基本用法和OC一致
* Swift2.0开始dowhile循环中没有do, 只有repeat, 因为do被作用异常处理
*/
var index = 0
repeat{
    print(index)
    index += 1
}while index < 10



