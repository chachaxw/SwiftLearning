//: Playground - noun: a place where people can play

import UIKit

/*:
函数
* 格式
func 函数名称(形参列表) ->返回值类型
{
    代码
}
* Void == ()
*/


// 1.没有参数没有返回值
func say() -> Void
{
    print("hi")
}
say()
// 如果没有返回值可以简写
func say1() -> ()
{
    print("hi")
}
say1()

func say2()
{
    print("hi")
}
say2()


// 2.有参数没有返回值
// Swift2.0开始, 会自动将形参列表的第二个参数名称作为标签
// Swift2.0之前是没有这个特性的, 在Swift2.0之前如果需要显示标签需要在形参名称前面加上#
func sum(num1: Int, num2: Int)
{
    print(num1 + num2)
    
}
sum(num1: 10, num2: 20)


// 3.没有参数有返回值
func getNumber() -> Int
{
    return 998
}
print(getNumber())

// 4.有参数有返回值
func sum2(num1: Int, num2: Int) -> Int
{
    return num1 + num2
}
print(sum2(num1: 50, num2: 50))


// 内部和外部参数
/*
* 默认情况下所有形参都是内部参数, 也就是说只能在函数内部使用
* 从Swift2.0开始会自动将形参列表的第二个参数名称作为标签, 也就是说从第二个参数开始, 参数的名称既是内部参数又是外部参数
* 如何指定外部参数?
*/
func sum3(num1: Int, y num2: Int)
{
    print("num1 = \(num1), num2 = \(num2)")
    print(num1 + num2)
}
//sum3(10, num2: 20)
sum3(num1: 10, y: 20)

// 默认参数
// 如果指定了默认值, 那么在调用方法的时候就可以不用传递数据, 如果不传递数据系统就会使用默认值, 如果传递了就会使用传递的值
// 在其它语言里面, 默认值一般情况只能是最后一个参数, 但是Swift可以写在任何位置
func joinString(str1: String, str2: String = "在", str3: String) -> String
{
    return str1 + str2 + str3
}
joinString(str1: "lnj", str2: "也在", str3: "xmg")
joinString(str1: "lmj", str3: "xmg")


// 常量参数和变量参数以及inout参数
// 默认情况下所有形参都是常量参数, 不能在函数中修改形参的值
// 如果想在函数中修改形参的值, 那么必须把形参变为变量参数
// 和OC一样, 在函数中修改形参的值不会影响到外面实参的值
// 如果想在函数中修改形参之后影响实参, 那么必须把形参变为inout参数

//func swap(a: Int, b: Int)
//{
//    let temp = a
//    a = b  // 不能修改常量参数
//    b = temp
//}

//func swap(var a: Int, var b: Int)
//{
//    print("a = \(a), b = \(b)")
//    let temp = a
//    a = b
//    b = temp
//    print("a = \(a), b = \(b)")
//}

func swap( a: inout Int, b: inout Int)
{
    print("a = \(a), b = \(b)")
    let temp = a
    a = b
    b = temp
    print("a = \(a), b = \(b)")
}

var x = 10
var y = 20
print("x = \(x), y = \(y)")
swap(a: &x, b: &y)
print("x = \(x), y = \(y)")

// 可变参数
// 只要参数是可变参数, 就可以传递一个或多个值
// 在其它语言中一般情况下可变参数只能是最后一个形参, 而Swift中可以写在任意位置, 但是为了提高代码的阅读性, 还是建议写在最后
func sum4(nums: Int..., temp: Int) -> Int
{
    var sum = 0
    for i in nums
    {
        sum += i
    }
    return sum + temp
}
sum4(nums: 1, 2, 3, temp: 10)

// 函数嵌套
// 将一个函数写到另外一个函数的函数体中, 外面称之为函数嵌套
// 1.被嵌套的函数只能在父函数内部访问
// 2.被嵌套的函数可以访问外部的变量
// 应用场景: 两个函数之间依赖较强, 或者一个函数就只给另外一个函数使用
//          例如: 对数组排序是一个函数, 交换变量又是一个函数, 他们就可以使用函数嵌套
let value = 55
func test()
{
    let number = 10
    func demo()
    {
        print("----\(number), \(value)")
    }
    demo()
}
test()



