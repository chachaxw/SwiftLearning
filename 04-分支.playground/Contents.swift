//: Playground - noun: a place where people can play

import UIKit

/*:
if
* 大部分用法和OC中一致
* Swif中条件语句可以不用写()
* OC中如果if后面只有一条语句, 那么{}可以省略, 但是Swift不行
* OC中条件语句可以是任何数值, OC中非0即真, YES/NO
* Swift中条件语句的取值必须是Bool类型, 也就是说Swift中提供了真正的Bool类型, true/false
*/

let number = 10
//if number = 10 // Swift有效的避免了这种问题
if number == 10
{
    print(number)
}

let age = 16
if age >= 18
{
    print("开网卡")
}else
{
    print("回家找妈妈")
}

/*:
三目运算符
* 大部分用法和OC一样
* 条件表达式只能是Bool值
*/

print(age >= 18 ? "开网卡" : "回家找妈妈")


/*:
switch
* 大部分用法和OC一样
* Swift中条件语句可以不用写()
* OC中default可以省略, 而Swift中大部分情况不能省略
* OC中default的位置可以随便写, 而Swift不可以
* OC中每个case后面必须加上break, 否则会出现穿透, 而Swift不会穿透, 也就是说不用写break
* OC中要在case中间定义变量必须加上{}, 否则作用域混乱, 而Swift不用
* 可以判断区间和元祖
*/

let score = 100
switch score
{
case 59:
    print("不及格")
    var num = 100
case 100:
    print("满分")
default:
    print("Other")
}

/*:
区间
* 闭区间: 0...10 , 取值范围0~10, 包含头包含尾
* 半闭区间: 0..<10 取值范围0~9, 包含头不包含尾
*/
// 判断区间
switch score
{
case 0..<60: // 0~59
    print("不及格")
case 60..<80: // 60~79
    print("良好")
case 80..<100: // 80~99
    print("优秀")
default:
    print("满分")
}

let point = (100, 50)
// 判断元祖
switch point
{
case (0, 0):
    print("原点")
case (50, 50):
    print("中点")
case (100, 100):
    print("右下角")
default:
    print("Other")
}

// 取出元祖中的值
switch point
{
case (var x, var y) where x > y:
    print(x)
    print(y)
default:
    print("Other")
}
