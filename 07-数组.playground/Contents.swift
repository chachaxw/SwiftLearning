//: Playground - noun: a place where people can play

import UIKit

/*:
数组
* 格式 var arr: Array<Int> / var arr: [Int]
* 可变和不可变 var/let
*/

// 定义数组
//var arr: Array<Int>
//var arr: [Int]
//arr = [1, 2]
var arr = [1, 2]

// 1.遍历数组(取值)
arr[0]
for item in arr
{
    print(item)
}
// 2.添加
arr.append(3)
arr
// 3.修改
arr[1] = 9
arr

// 4.删除
arr.remove(at: 1)
arr

// 5.合并
var arr1 = [3, 5, 7]
arr += arr1
arr

// 6.Swift特殊
for item in arr[0..<2] // 0~1
{
    print(item)
}

//arr.removeRange(Range(start: 0, end: 2))
// 通过观察可以发现Range其实就是一个半闭区间
arr.removeSubrange(0..<2)
arr

arr += arr1[0..<2]


