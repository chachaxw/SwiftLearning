//: Playground - noun: a place where people can play

import UIKit

let number1 = 10
let number2 = 10.1
/*:
元祖
* 复合数据类型
* 只要将多个相同或者不同的数据用()括起来就是元祖
* 优点: 在以前没有元祖之前C和OC语言是通过传入指针或者返回结构体的方式来返回多个值的, 而有了元祖之后就可以实现让一个函数返回多个值
*/
let number3: (Int, Double, Int, Double) = (10, 10.123, 9, 44.40)
number3.0
number3.1
number3.2
number3.3

// 给元祖的元素起名称
let person = (name: "chacha", age: 22, score: 100.0)
person.name
person.age
person.score


// 提取元祖的数据
let (name, age, score) = ("chacha", 22, 100.0)
name
age
score

