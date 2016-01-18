//
//  ViewController.swift
//  swiftBase
//
//  Created by LoveQiuYi on 16/1/18.
//  Copyright © 2016年 LoveQiuYi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("-----------------------基础的数据类型---------------------------")
        //常量用let定义，变量用var定义
        let a = 1
        var b = 10
        let floatNumber:Float = 20.3//-----表示这个数据是属于什么类型的数据：数据名称:数据类型
        let string = "zhangxin"//字符串
        let choose:Bool = true//BOOL类型
        print(a,b,floatNumber,string,choose)
        //数据类型Int8，UInt8前面是有符号的整形后面是无符号的整形
        let c:Int8 = 100
        print(c)
        let d = Int8.max//查看数据类型的数值范围
        let e = Int8.min
        print("Int8的max = \(d),Int8的min = \(e)")//注意和OC中不同的输出格式
        //可选类型-----用于判断值是否存在
        //------感觉可以理解为一个指针，指向存数数据的地址
        let valueOne:Int?=nil//地址为空返回nil
        let valueTwo:Int?=23//地址中有数据
        print(valueOne,valueTwo)
        print(valueTwo!)//拆包使用强制运算符号!取出value里面的值
        //类型别名：就是为这个类型取个别的名字
        typealias sameInt = Int
        let numberOne:sameInt = 100//这个时候sameInt也就是Int的含义
        print(numberOne)
        print("-----------------------元组以及运算符-----------------------------------")
        //元组就是将多个值放到一起，组合为一个元素
        let numbers = (12,"zhangxin",true)
        print(numbers)
        //运算符,++number先执行再输出number++先输出再执行
        var numberThree = 1
        print(numberThree) // 1
        print(++numberThree)// 2
        print(numberThree) // 2
        print(numberThree--) //2
        print(numberThree) //1
        //比较运算符
        let numberFour = 2
        let numberFive = 3
        print(numberFour > numberFive)
        //位运算符:&都为1的时候才是1 |有一个为1就是1 ^相同为1不同为0 ~相反 <<左移
        let numberSix:UInt8 = 0b00010000//二进制数16
        let result = numberSix << 2 //左移动两位则为64
        print(result)//64
        //区间运算符:闭区间用...半闭区间用..
        for number in 1...5{
            print(number)//循环输出1~5
        }
        for number in 1..<5{
            print(number)//循环输出1~4
        }
        //溢出运算符
        var intMax = UInt8.max
        print(intMax) // UInt8类型的最大的数 255  返回是0~255
        intMax = intMax &+ 1 //+1溢出 结果为0
        print(intMax)
        print("-----------------------字符串-----------------------------------")
        let str = "zhangxin"
        print(str.uppercaseString)//小写字符转为大写字符
        print(str.characters.count)//字符的个数
        print(str.isEmpty)//判断字符串是否为空
        print(str.hasPrefix("zh"))//判断字符串是否包含"zh"的前缀
        print(str.hasSuffix("cvb"))//是否有这样的后缀
        print(str + "hello")//连接字符串
        print(str == "zhang")//字符串是否相等
        print("-----------------------集合类型：数组和字典-----------------------------------")
        //数组
        var arr = [1,12.54,"zhangxin"]
       // var arr2 = arr//这个就是数组的拷贝-------拷贝触发的条件：【数组的长度发生改变的时候】
        print(arr)
        print(arr.count)//数组长度
        print(arr.isEmpty)//数组是否为空
        arr.append(23)//添加元素，默认最后面
        print(arr)
        arr.insert("wanminghai", atIndex: 3)//在索引位置插入元素，如果该索引位置中有数据则数据的位置往后移动一个位置
        print(arr)
        arr.removeLast()//移除最后一个元素
        print(arr)

        /**
        *  数组的运算符号的知识还不是很熟悉
        */
        var dic = [1:"z",2:"h",3:34]
        print(dic)
        dic.updateValue(36, forKey: 3)//改变key为3的值
        print(dic)
        dic.removeValueForKey(1)//移除key为1的值
        print(dic)
    }

}
