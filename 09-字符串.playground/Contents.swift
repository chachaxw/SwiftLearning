//: Playground - noun: a place where people can play

import UIKit

/*:
字符串
* OC的字符串是NSString, Swift的字符串String
* OC的字符串是一个对象, Swift字符串是一个结构体, 效率更高
* OC中的字符串是一个\0结尾, Swift字符串不是以\0结尾
NSString *str  = @"abc\0def";
NSLog("%@", str);
// abc
* Swift中的字符串支持遍历
*/

let str = "abc\0def"
print(str)

// 遍历字符串
for c in str.characters
{
    print(c)
}

// 字符串拼接
var str2 = "lnj"
str2 += str
str2

// 字符串格式化
// 可以使用\()在字符串中插入任何数据
let name = "lnj"
let age = 30
let res = "name = \(name), age = \(age)"
res

// 2015-10-09 03:04
let str3 = String(format: "%d-%02d-%02d %02d:%02d", arguments: [2015, 10, 9, 3, 4])

// 截取字符串
// 提示: 在Swift开发中, 我们经常需要将Swift的字符串转换为OC的字符串来操作, 并且Swift自身也意识到了这一点, 所以在OC字符串和Swift的字符串之间转换相当简单
let str4 = "chacha"
//let str5: NSString = str4
//str5.substringToIndex(4)
//str5.substringWithRange(NSMakeRange(4, 2))

// as 就是把什么当做什么
(str4 as NSString).substring(with: NSMakeRange(3, 3))


var str5 = "chacha"
str5.substring(from: str5.index(str5.startIndex, offsetBy: 1))

let str6 = "a😄b🐶c🇨🇳"
let r1 = str6.range(of: "🇨🇳")



