//: Playground - noun: a place where people can play

import UIKit

/*:
字典
* 格式 var dict: Dictionary<String, String>
* 注意: 将OC的{}换成了[]
* 可变和不可变 var/let
*/

//var dict: Dictionary<String, String>
//var dict: [String: String]
var dict = ["name": "lnj", "age": "30"]
dict

// 企业开发中字典使用得最多的类型就是 [String: NSObject]类型
var dict2 = ["name": "lnj", "age": 30, "score": 99.9] as [String: Any]
dict2

// 取值
dict2["name"]

// 修改
dict2["name"] = "lmj"
dict2

// 增加
// 如果key存在就直接修改, 如果key不存在就会增加
dict2["rank"] = 1
dict2

// 删除
dict2.removeValue(forKey: "name")
dict2

// 遍历
// OC写法
for key in dict2.keys
{
    print(dict2[key])
}

// Swift写法
// 系统会自动将字典中的key赋值给元祖中的第一个遍历, 会自动将字典中的value赋值给元祖中的第二个遍历
for (xx, oo) in dict2
{
    print(xx)
    print(oo)
}

// 合并
var dict3 = ["name": "lnj", "age": 30] as [String : Any]
var dict4 = ["score": 99.9]

// 注意点无论是数组还是字典, 只有相同类型才能赋值
for (key, value) in dict4
{
    dict3[key] = value
}
dict3

