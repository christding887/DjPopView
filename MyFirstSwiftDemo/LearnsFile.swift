//
//  LearnsFile.swift
//  MyFirstSwiftDemo
//
//  Created by dj-xxzx-10065 on 2017/3/3.
//  Copyright © 2017年 Dong jing Ltd. All rights reserved.
//

import Foundation


//guard 代替if 提前retuen结束参数为0的判断
//var myUsername:String?
//var myPassword:String?
//func userLogIn() {
//    guard let username = myUsername, let password = myPassword
//        else { return }
//    print("优衣库欢迎, \(username)!,\(password)!")
//}
//字符串转整数
//var myage = "8"
//var yourage = "15"
//print(myage+yourage)
//var mage:Int? = Int(myage)
//var yage:Int? = Int(yourage)
//print(mage!+yage!)

//for xx in 0...3{
//    print("Hello, World!")
//}

//var point=("dwc",10)
//print(point)

//var point = (myname:"dwc",myage:31)
//print(point.myname,point.myage)

//var point=(myage:31,yourage:32)
//switch point{
//case let(myage,yourage) where(myage==yourage):
//    print("相等")
//case let(myage,yourage) where(myage>yourage):
//    print("我大于你")
//case let(myage,yourage) where(myage<yourage):
//    print("你大于我")
// default:
//    break
//}
//var myage:Int = 30
//print(myage)

//swift为类型安全
//var myage = 30
//myage="dddd" //报错

//swift变量名可以是简单的unicode字符
//var 中国人 = "china man"
//print(中国人)
//

//Optional类型
//var myname:String?
//myname="dwc"
//print(myname)
//print(myname!)

//回传数值是否为空判断
//var myname:String?
//myname="ddd"
//if myname!.isEmpty{
//    print("空")
//}else{
//    print("不为空")
//}

//常量let
//let 中国人 = "china man"
//var chinaman = "china man"
//if 中国人==chinaman{
//    print("我们都是中国人")
//}else{
//    print("小日本")
//}

//var myStr:String=String("我是中国人")
//if myStr.isEmpty{
//    print("空")
//}else{
//    print("不为空")
//}
//
//var  yourStr = "我是中国人"
//if yourStr.isEmpty{
//    print("空")
//}else{
//    print("不为空")
//}

//let myName = "111"
//var name:Int! = Int(myName)
//print(name)

//var myname:String = "dwc887"
//var youname = myname.replacingOccurrences(of: "8", with: "9")
//for ch in youname.characters{
//    print(ch)
//}

//数组
//var someInts:[Int]=[] //初始化空数组
//var someInts2=[Int]() //初始化空数组
//someInts2.append(20)
//someInts2.append(30)
//someInts2+=[40]
//print("第一个元素为\(someInts2[0])")
//print("第二个元素为\(someInts2[1])")
//print("第三个元素为\(someInts2[2])")
//var someStr = [String]()
//someStr.append("dwc")
//someStr.append("dwj")
//someStr.append("hxl")
//someStr+=["sjh"]
//
//for name in someStr[0..<someStr.count]{
//    print(name)
//}

//for (index,item) in someStr.enumerated(){
//    print("小标为\(index);对应的字符串为\(item)")
//}

//字典
//var myDic:[Int:String]=[31:"dwc",25:"dwj",30:"hxl"]
//var yourDic=[String:Int]()
//
//let keyArr = [Int](myDic.keys)
//for key in keyArr{
//    print(key)
//}

//函数

//func myAction(name:String) -> String {
//    return name
//}
//print(myAction(name: "dwc"))

//func varis<M>(members:M...)->Double{
//    var num:Double=0
//    for nu in members {
//        num+=nu as! Double
//    }
//    return num
//}
//print(varis(members:1.5,2.5))

//func changename(myname:inout String,yourname:inout String) {
//    let centerName:String = myname
//    myname=yourname
//    yourname=centerName
//}
//var myname = "dwc"
//var yourname = "ldh"
//changename(myname: &myname,yourname: &yourname)
//print("我的名字：\(myname)，你的名字：\(yourname)")

//func sum(a: Int, b: Int) -> Int {
//    return a + b
//}
//var addition: (Int, Int) -> Int = sum
//print("输出结果: \(addition(40, 89))")

//func nameaction(firstname:String,secondname:String) -> String {
//    return firstname+secondname
//}
//var name:(String,String)->String = nameaction
//
//print(name("ding","wenchong"))

//func calcDecrement(forDecrement total: Int) -> () -> String {
//    var overallDecrement = 0
//    func decrementer() -> String {
//        let overStr:String = "80"
//        overallDecrement -= total
//        return "\(overallDecrement)"+overStr
//    }
//    return decrementer
//}
//let decrem = calcDecrement(forDecrement: 30)
//print(decrem())

//闭包
//var divide = {(val1: Int, val2: Int) -> Int in
//    return val1 / val2
//}
//var result = divide(200, 20)
//print (result)

//let names = ["AT", "AE", "D", "S", "BE"] //排序一
//var reversed = names.sorted( by: { $0 > $1 } )
//print(reversed)

//let names = [5, 8, 1, 9, 2] //排序二
//var reversed = names.sorted(by: >)
//print(reversed)

//func makeIncrementor(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementor() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementor
//}
//
//let incrementByTen = makeIncrementor(forIncrement: 10)
//var incrementBySeven = makeIncrementor(forIncrement: 10)
//
//
//// 返回的值为10
//print(incrementByTen())
//print(incrementBySeven())
//
//
//// 返回的值为20
//print(incrementByTen())
//print(incrementBySeven())
//
//// 返回的值为30
//print(incrementByTen())
//print(incrementBySeven())

//枚举
enum nameList{
    case dwc
    case dwj
    case hxl
    case hxc
}
//var name = nameList.dwc
//func choiceName(name:nameList) -> String {
//    switch name {
//    case .dwc:
//        return "丁温冲"
//    case .dwj:
//        return "丁温静"
//    case .hxl:
//        return "胡笑蕾"
//    case .hxc:
//        return "胡笑尘"
//    }
//}
//
//print(choiceName(name: name))

//enum Month: Int {
//    case January = 1, February, March, April, May, June, July, August, September, October, November, December
//}
//
//var data:Month = Month(rawValue: 3)!
//switch data{
//case .February:
//    break
//default:
//    break
//
//}
//let yearMonth = Month.May.rawValue
//print("数字月份为: \(yearMonth)。")

//结构体
//func fisher(fishname:String) -> String {
//    return fishname
//}
//
//struct goodsList {
//    var masu:String="ddd"
//    var apple:String {
//        get{
//         return "abc"
//        }
//        set{
//            masu=newValue
//        }
//
//    }

//    var vege = {(val1: Int, val2: Int) -> Int in
//    return val1*val2
//    }
//    var fish:(String) -> String = fisher
//    init(ms:String) {
//        self.masu=ms
//    }
//}
//
//var  goods = goodsList()
//goods.apple="123"
//print(goods.masu)

//let goods = goodsList(ms:"牛肉")
//print(goods.masu)
//print(goods.vege(10,10))
//print(goods.fish("带鱼"))

//class SampleClass: Equatable {    //协议Equatable
//    let myProperty: String
//    init(s: String) {
//        myProperty = s
//    }
//}
//func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
//    return lhs.myProperty == rhs.myProperty
//}
//
//let spClass1 = SampleClass(s: "Hello")
//let spClass2 = SampleClass(s: "Hello")
//
//if spClass1 === spClass2 {// false
//    print("引用相同的类实例 \(spClass1)")
//}
//
//if spClass1 !== spClass2 {// true
//    print("引用不相同的类实例 \(spClass2)")
//}


//属性
//struct Number
//{
//    var digits: Int
//    let pi = 3.1415
//}
//
//var n = Number(digits: 12345)
//n.digits = 67
//
//print("\(n.digits)")
//print("\(n.pi)")
//

//var myname = String()
//var myage = Int()
//var students = [Int]()
//var mydic = [Int:String]()
//var mydics = [23:"dwc",24:"dgg"]
//for key in mydics.keys{
//    print(key)
//}
//get setter
//class sample {
//    var no1 = 0.0, no2 = 0.0
//    var length = 300.0, breadth = 150.0
//
//    var middle: (Double, Double) {
//        get{
//            return (length / 2, breadth / 2)
//        }
//
//        set(axis){
//            no1 = axis.0 - (length / 2)
//            no2 = axis.1 - (breadth / 2)
//        }
//
//    }
//
//    var mianji:Double{
//        get{
//          return (length + breadth)/2
//        }
//        set(mm){
//            no1 = mm - (length / 2)
//            no2 = mm + (length / 2)
//        }
//    }
//}
//
//var result = sample()
//print(result.mianji)
//result.mianji=150.0
//print(result.no1,result.no2)


//var result = sample()
//print(result.middle)
//result.middle = (x:0.0, y:10.0)
//
//print(result.no1)
//print(result.no2)

//类型属性
//class StudMarks {
//    static let markCount = 97
//    static var totalCount = 0
//    var InternalMarks: Int = 0 {
//        didSet { //在新值被设置后立即调用（属性观察机制）
//            if InternalMarks > StudMarks.markCount { //类调用static申明属性值
//                InternalMarks = StudMarks.markCount
//            }
//            if InternalMarks > StudMarks.totalCount {
//                StudMarks.totalCount = InternalMarks
//            }
//        }
//    }
//}
//
//var stud1Mark1 = StudMarks()
//var stud1Mark2 = StudMarks()
//
//stud1Mark1.InternalMarks = 98
//print(stud1Mark1.InternalMarks)
//
//stud1Mark2.InternalMarks = 87
//print(stud1Mark2.InternalMarks)


//方法参数名区别
//class multiplication {
//    var count: Int = 0
//    func incrementBy(_ no1: Int, _ no2: Int, _ no3:Int) {
//        count = no1 * no2*no3
//        print(count)
//    }
//}
//
//let counter = multiplication()
//counter.incrementBy(800, 3, 1)
//counter.incrementBy(100,  5,2)
//counter.incrementBy( 15000, 3, 3)


//class multiplication {
//    var count: Int = 0
//    func incrementBy(number no1: Int, _ no2: Int, _ no3:Int) {
//        count = no1 * no2*no3
//        print(count)
//    }
//}
//
//let counter = multiplication()
//counter.incrementBy(number:800, 3, 1)
//counter.incrementBy(number:100,  5,2)
//counter.incrementBy(number:15000, 3, 3)


//class myname {
//    let name:Int
//    let age:Int
//    let maxx:Int
//    init(namet:Int,aget:Int) {
//        name=namet
//        age=aget
//        maxx=namet+aget
//    }
//    func jianshu(ct:Int) -> Int {
//        return maxx-ct
//    }
//
//}
//
//var na = myname(namet:10,aget:20)
//print(na.maxx)
//print(na.jianshu(ct: 10))


//struct myname {
//    let name:String
//    let age:Int
//    let address:String = "温州龙湾"
//    static let myage=18   //类属性
//}
//var nameage = myname(name:"christding",age:20)
//var yourage = myname(name:"dwc",age:30)

//print(myname.myage)


//类型方法（类方法）
//class Math
//{
//    class func abs(number: Int) -> Int
//    {
//        if number < 0
//        {
//            return (-number)
//        }
//        else
//        {
//            return number
//        }
//    }
//}
//
//struct absno
//{
//    static func abs(number: Int) -> Int
//    {
//        if number < 0
//        {
//            return (-number)
//        }
//        else
//        {
//            return number
//        }
//    }
//}
//
//let no = Math.abs(number: -35)
//let num = absno.abs(number: -5)
//
//print(no)
//print(num)

//继承
//class StudDetails
//{
//    var mark1: Int;
//    var mark2: Int;
//
//    init()
//    {
//        mark1 = 93;
//        mark2 = 89;
//    }
//
//    func show()
//    {
//        print("Mark1:\(self.mark1), Mark2:\(self.mark2)")
//    }
//}
//
//class Tom : StudDetails
//{
//    var myname:String
//    var myage:Int
//    var myaddress:String?
//    var myweight:Int?
//
//    override init()
//    {
//        self.myname="christding"
//        self.myage=15
//        super.init()
//        super.mark1=100
//        super.mark2=200
//    }
//
//}
//
//let tom = Tom()
//print(tom.mark1,tom.mark2)
//tom.show()
//

//class Circle {
//    final var radius = 12.5
//    var area: String {
//        return "矩形半径为 \(radius) "
//    }
//}
//class Rectangle: Circle {
//    var print = 7
//    override var area: String {
//        return super.area + " ，但现在被重写为 \(print)"
//    }
//}
//
//let rect = Rectangle()
//rect.radius = 25.0
//rect.print = 3
//print("半径: \(rect.area)")

//struct Rectangle {
//    var length: Double?    //length属性有可能为nil申明optional
//    var width:Double?    //默认初始化为nil
//    init(frombreadth breadth: Double) {
//        length = breadth * 10
//    }
//
//    init(frombre bre: Double) {
//        length = bre * 30
//    }
//
//    init(_ area: Double) {
//        length = area
//    }
//}
//
//var rectarea = Rectangle(180)
//rectarea.length=nil
//print("面积为：\(rectarea.length)")
//print("长度为：\(rectarea.width)")
//
//let recfbre = Rectangle(frombre: 10.0)
//print("面积为：\(recfbre.length)")
/**只要在构造过程结束前常量的值能确定，你可以在构造过程中的任意时间点修改常量属性的值。
 对某个类实例来说，它的常量属性只能在定义它的类的构造过程中修改；不能在子类中修改。
 尽管 length 属性现在是常量，我们仍然可以在其类的构造器中设置它的值：**/

//struct mytranc {
//    var name:String?
//    var age:Int?
//    var address:String?
//}
//let my = mytranc(name: "dwc", age: 30 ,address:"christding")
//if let myname = my.address{
//    print(myname)
//}else{
//    print("空")
//}


//构造器代理
//struct Size {
//    var width = 0.0, height = 0.0
//}
//struct Point {
//    var x = 0.0, y = 0.0
//}
//
//struct Rect {
//    var origin = Point()
//    var size = Size()
//    init() {}
//    init(origin: Point, size: Size) {
//        self.origin = origin
//        self.size = size
//    }
//    init(center: Point, size: Size) {
//        let originX = center.x - (size.width / 2)
//        let originY = center.y - (size.height / 2)
//        self.init(origin: Point(x: originX, y: originY), size: size)
//    }
//}
//
//
//// origin和size属性都使用定义时的默认值Point(x: 0.0, y: 0.0)和Size(width: 0.0, height: 0.0)：
//let basicRect = Rect()
//print("Size 结构体初始值: \(basicRect.size.width, basicRect.size.height) ")
//print("Rect 结构体初始值: \(basicRect.origin.x, basicRect.origin.y) ")
//
//// 将origin和size的参数值赋给对应的存储型属性
//let originRect = Rect(origin: Point(x: 2.0, y: 2.0),
//                      size: Size(width: 5.0, height: 5.0))
//
//print("Size 结构体初始值: \(originRect.size.width, originRect.size.height) ")
//print("Rect 结构体初始值: \(originRect.origin.x, originRect.origin.y) ")
//
//
////先通过center和size的值计算出origin的坐标。
////然后再调用（或代理给）init(origin:size:)构造器来将新的origin和size值赋值到对应的属性中
//let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
//                      size: Size(width: 3.0, height: 3.0))
//
//print("Size 结构体初始值: \(centerRect.size.width, centerRect.size.height) ")
//print("Rect 结构体初始值: \(centerRect.origin.x, centerRect.origin.y) ")

//便利构造器
//class MainClass {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    convenience init() {
//        self.init(name: "[匿名]")
//    }
//}
//let main = MainClass(name: "Runoob")
//print("MainClass 名字为: \(main.name)")
//
//let main2 = MainClass()
//print("没有对应名字: \(main2.name)")
//
//class SubClass: MainClass {
//    var count: Int
//    init(name: String, count: Int) {
//        self.count = count
//        super.init(name: name)
//    }
//
//    override convenience init(name: String) {
//        self.init(name: name, count: 1)
//    }
//}
//
//let sub = SubClass(name: "Runoob")
//print("MainClass 名字为: \(sub.name)")
//
//let sub2 = SubClass(name: "Runoob", count: 3)
//print("count 变量: \(sub2.count)")

//可失败构造器
//struct StudRecord {
//    let stname: String
//    var fname:String?{
//        didSet{
//
//        }
//    }
//
//
//    init?(stname: String) {
//        if stname.isEmpty {return nil }
//        self.stname = stname
//    }
//}

//let stmark = StudRecord(stname: "Runoob")
//if let name = stmark {
//    print("指定了学生名")
//}
//
//let blankname = StudRecord(stname: "")
//if blankname == nil {
//    print("学生名为空")
//}

//析构函数
//var counter = 0;  // 引用计数器
//class BaseClass {
//    init() {
//        counter += 1;
//    }
//    deinit {
//        counter -= 1;
//    }
//}
//
//var show: BaseClass? = BaseClass()
//print(counter)
//show = nil
//print(counter)

//class Person {
//    var residence: Residence?
//    init(residence:Residence) {
//        self.residence=residence
//    }
//
//}
//
//class Residence {
//    var numberOfRooms = 1
//}
//
//let john = Person(residence: Residence())
//
//let roomCount = john.residence!.numberOfRooms
//print(roomCount)

//var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
//testScores["Dave"]?[0] = 91
////testScores["Bev"]?[0]++
//testScores["Brian"]?[0] = 72
//print(testScores["Dave"]![0])

//类扩展 extension
//extension Int {
//    var add: String {return String(stringInterpolationSegment:self) + "100" }
//    var sub: Int { return self - 10 }
//    var mul: Int { return self * 10 }
//    var div: Int { return self / 5 }
//}

//let addition = 3.add
//print("加法运算后的值：\(addition)")
//
//let subtraction = 120.sub
//print("减法运算后的值：\(subtraction)")
//
//let multiplication = 39.mul
//print("乘法运算后的值：\(multiplication)")
//
//let division = 55.div
//print("除法运算后的值: \(division)")

//let mix = 30.add + 34.sub
//print("混合运算结果：\(mix)")

//let adda = 100.add
//print(adda)


//mutating 在struct和枚举中对函数进行修改的时候需要在函数前面加mutating;类中可以省略mutating
//extension 实例修改func前加上mutating
//extension Double {
//    mutating func square() {
//        let pi = 3.1415
//        self = pi * self * self
//    }
//}
//
//var Trial1 = 3.3
//Trial1.square()
//print("圆的面积为: \(Trial1)")

// subscript 下标脚本
//struct Matrix {
//    let rows: Int, columns: Int
//    var print: [Double]
//    init(rows: Int, columns: Int) {
//        self.rows = rows
//        self.columns = columns
//        print = Array(repeating: 0.0, count: rows * columns)
//    }
//    subscript(row: Int, column: Int) -> Double {
//        get {
//            return print[(row * columns) + column]
//        }
//        set {
//            print[(row * columns) + column] = newValue
//        }
//    }
//}


//class sample {
//    var no1 = 0.0, no2 = 0.0
//    var length = 300.0, breadth = 150.0
//
//    var middle: (Double, Double) {
//        get{
//            return (length / 2, breadth / 2)
//        }
//        set{
//            no1 = newValue.0 - (length / 2)
//            no2 = newValue.1 - (breadth / 2)
//        }
//    }
//}
//
//var result = sample()
//print(result.middle)
//result.middle = (0.0, 10.0)
//
//print(result.no1)
//print(result.no2)

//如果一个子类重写了父类的指定构造器，并且该构造器遵循了某个协议的规定，那么该构造器的实现需要被同时标示required和override修饰符：
//protocol tcpprotocol {
//    init(no1: Int)
//}
//
//class mainClass {
//    var no1: Int // 局部变量
//    init(no1: Int) {
//        self.no1 = no1 // 初始化
//    }
//}
//
//class subClass: mainClass, tcpprotocol {
//    var no2: Int
//    init(no1: Int, no2 : Int) {
//        self.no2 = no2
//        super.init(no1:no1)
//    }
//    // 因为遵循协议，需要加上"required"; 因为继承自父类，需要加上"override"
//    required override convenience init(no1: Int)  {
//        self.init(no1:no1, no2:0)
//    }
//}
//let res = mainClass(no1: 20)
//let show = subClass(no1: 30, no2: 50)
//
//print("res is: \(res.no1)")
//print("res is: \(show.no1)")
//print("res is: \(show.no2)")


// 你可以使用is、as和as?操作符来检查是否遵循某一协议或强制转化为某一类型
//protocol HasArea {
//    var area: Double { get }
//}
// 定义了Circle类，都遵循了HasArea协议
//class Circle: HasArea {
//    let pi = 3.1415927
//    var radius: Double
//    var area: Double { return pi * radius * radius }
//    init(radius: Double) { self.radius = radius }
//}
//
//// 定义了Country类，都遵循了HasArea协议
//class Country: HasArea {
//    var area: Double
//    init(area: Double) { self.area = area }
//}
//
//// Animal是一个没有实现HasArea协议的类
//class Animal {
//    var legs: Int
//    init(legs: Int) { self.legs = legs }
//}
//
//let objects: [AnyObject] = [
//    Circle(radius: 2.0),
//    Country(area: 243_610),
//    Animal(legs: 4)
//]
//
//for object in objects {
//    // 对迭代出的每一个元素进行检查，看它是否遵循了HasArea协议
//    if let objectWithArea = object as? HasArea {
//        print("面积为 \(objectWithArea.area)")
//    } else {
//        print("没有面积")
//    }
//}

//protocol classa {
//
//    var marks: Int { get set }
//    var result: Bool { get }
//
//    func attendance() -> String
//    func markssecured() -> String
//
//}
//
//protocol classb: classa {
//
//    var present: Bool { get set }
//    var subject: String { get set }
//    var stname: String { get set }
//
//}
//
//class classc: classb {
//    var marks = 96
//    let result = true
//    var present = false
//    var subject = "Swift 协议"
//    var stname = "Protocols"
//
//    func attendance() -> String {
//        return "The \(stname) has secured 99% attendance"
//    }
//
//    func markssecured() -> String {
//        return "\(stname) has scored \(marks)"
//    }
//}
//
//let studdet = classc()
//studdet.stname = "Swift"
//studdet.marks = 98
//print(studdet.markssecured())
//
//print(studdet.marks)
//print(studdet.result)
//print(studdet.present)
//print(studdet.subject)
//print(studdet.stname)

//swapTwoValues 后面跟着占位类型名（T），并用尖括号括起来（<T>）。这个尖括号告诉 Swift 那个 T 是 swapTwoValues(_:_:) 函数定义内的一个占位类型名，因此 Swift 不会去查找名为 T 的实际类型。
// 定义一个交换两个变量的函数
//func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var numb1 = 100
//var numb2 = 200
//
//print("交换前数据:  \(numb1) 和 \(numb2)")
//swapTwoValues(&numb1, &numb2)
//print("交换后数据: \(numb1) 和 \(numb2)")
//
//var str1 = "A"
//var str2 = "B"
//
//print("交换前数据:  \(str1) 和 \(str2)")
//swapTwoValues(&str1, &str2)
//print("交换后数据: \(str1) 和 \(str2)")



//私有构造函数后不能直接实例化 ：var fa = Father()
//  class Father {
//    var surname: String?
//    var name:String?
//
////     init() {
////        self.surname = ""
////        self.name = ""
////    }
////
//    func displayAllName() {
//        print("我叫\(self.surname!)\(self.name!)")
//    }
//}
//
//class children: Father {
//    override  init(){
//        super.init()
//        super.surname="dwc"
//        super.name="cd"
//    }
//
//}
//
//var ch = children()
//ch.displayAllName()

//Student(stringScore: "70,80,90")的方式创建实例时，就需要自定义初始化方法了：
//struct Student {
//    var chinese: Int = 50
//    var math: Int = 50
//    var english: Int = 50
//    init() {}
//    init(chinese: Int, math: Int, english: Int) {
//        self.chinese = chinese
//        self.math = math
//        self.english = english
//    }
//    init(stringScore: String) {
//        let cme = stringScore.characters.split(separator: ",")
//        chinese = Int(String(cme.first!))!
//        math = Int(String(cme[1]))!
//        english = Int(String(cme.last!))!
//    }
//}
//let student6 = Student()
//print(student6)
//let student7 = Student(chinese: 90, math: 80, english: 70)
//print(student7)
//let student8 = Student(stringScore: "70,80,90")
//print(student8)
/*********************************************************************************/
//枚举、结构体、类的共同点：
//定义属性和方法；
//下标语法访问值；
//初始化器；
//支持扩展增加功能；
//可以遵循协议；

//类特有的功能：
//继承；
//允许类型转换；
//析构方法释放资源；
//引用计数；
//类是引用类型
//引用类型(reference types，通常是类)被复制的时候其实复制的是一份引用，两份引用指向同一个对象。所以在修改一个实例的数据时副本的数据也被修改了(s1、s2)。
//
//枚举，结构体是值类型
//值类型(value types)的每一个实例都有一份属于自己的数据，在复制时修改一个实例的数据并不影响副本的数据(p1、p2)。值类型和引用类型是这三兄弟最本质的区别。

//1.什么时候该用值类型：
//
//要用==运算符来比较实例的数据时
//你希望那个实例的拷贝能保持独立的状态时
//数据会被多个线程使用时
//2.什么时候该用引用类型（class）：
//
//要用==运算符来比较实例身份的时候
//你希望有创建一个共享的、可变对象的时候



//协议的关联类型指的是根据使用场景的变化，如果协议中某些属性存在“逻辑相同的而类型不同”的情况，可以使用关键字associatedtype来为这些属性的类型声明“关联类型”。

//protocol WeightCalculable {
//    //为weight 属性定义的类型别名
//    associatedtype WeightType
//    var weight: WeightType { get }
//}
//WeightCalculable是一个“可称重”协议，weight属性返回遵守该协议具体类型的实例的重量。这里我们使用associatedtype为该属性的类型定义了一个别名WeightType，换言之在WeightCalculable中并不关心weight的类型是Int 还是Double或者是其他类型,他只是简单的告诉我们返回的类型是WeightType，至于WeightType到底是什么类型由遵守该协议的类中自己去定义。那么这样做的好处是什么呢？


//定义手机结构体
//struct MobilePhone: WeightCalculable {
//    typealias WeightType = Double
//    var weight: WeightType
//}
//let iPhone7 = MobilePhone(weight: 0.138)
////定义汽车结构体
//struct Car: WeightCalculable {
//    typealias WeightType = Int
//    var weight: WeightType
//}
//let truck = Car(weight: 3000_000)
//如上所示：MobilePhone、Car类型都遵守了WeightCalculable协议，都能被称重，但是手机由于结构精密、体型小巧，小数点后面的数字对于称重来说是必不可少的，所以使用了Double类型，返回0.138千克即138克，但是对于汽车这样的庞然大物在称重时如果还计较小数点后面的数字就显得没有意义了，所以使用Int类型，表示3000千克也就是3吨。

//从上面的例子可以很好的看出由于MobilePhone、Car称重时逻辑是一样的，但是对于weight属性的返回值要求不一样，如果仅仅因为返回值类型的不同定义两个类似的协议一个是Int类型另外一个是Double类型，这样做显然是重复的、不合适的。所以associatedtype在这种情况下就发挥出作用了，他让开发者在遵守协议时根据需求去定义返回值的类型，而不是在协议中写死。唯一要注意的是：一定要在遵守该协议的类型中使用typealias规定具体的类型。不然编译器就报错了。

//遵守CustomStringConvertible协议
//struct Student: CustomStringConvertible{
//    var math: Int
//    var english: Int
//    var description: String {
//        return "Your math:" + String(math) + ", english:" + String(english)
//    }
//}
//let s1 = Student(math: 80, english: 60)
//print(s1) // Your math:80, english:60

//学习使用协议就不得不提到通过协议语法延伸出来的 '面向协议编程范式'，苹果提出Swift是一门支持面向协议编程的语言，甚至提倡我们通过协议、结构体代替部分类的使用


//闭包
//let divide = {(val1: Int, val2: Int) -> Int in
//    return val1 / val2
//}
//let result = divide(200, 20)
//print (result)

//var mydivide:((Int,Int) -> Int)?
//mydivide={(val1:Int,val2:Int) -> Int in
//  return val1+val2
//}
//print(mydivide!(10,10))


//尾随闭包是一个书写在函数括号之后的闭包表达式，函数支持将其作为最后一个参数调用

//func caculateTwoNumbers(num1: Int, num2: Int, CaluFunction: (Int, Int) -> Int) -> Int{
//    return CaluFunction(num1, num2)
//}
//print(caculateTwoNumbers(num1: 10, num2: 10) {$0*$1}) //尾随闭包输出

//var numReult1 = caculateTwoNumbers(num1:2, num2: 3,CaluFunction: {(num1: Int, num2: Int) -> Int in
//    return num1 + num2
//})
//print(numReult1) //内联闭包输出

