//: Playground - noun: a place where people can play

import UIKit

var strd = "Hello, playground"

// 四則演算
1+2
10+1
10-2
10*3
10/4
10%5
10%4
10%2
10%3

//こんにちは
"こんにちは"

//Hello + Playground
"Hello" + "Playground"

print("Hello" + "Playground")

print("あなたは何が好きですか？")
print("りんごです")
print("あなたは何が好きですか？")
print("みかんです")

var str = "あなたは何が好きですか"

print(str)
print("りんごです")
print(str)
print("みかんです")

str = "あなたは何の食べ物が好きですか"

print(str)
print("りんごです")
print(str)
print("みかんです")

let value = "りんごが好きです"
// value = "みかんが好きです" //定数 let に対して代入しようとしている

var value1 = "りんごが好きです"
value1 = "みかんが好きです"


var valueString = "りんごを1個、みかんを2個、きゅうりを3本、魚を4匹書いました"

print(valueString)

let a = 1
let b = 2
let c = 3
let d = 4
let aString = String(a)
let bString = String(b)
let cString = String(c)
let dString = String(d)

var valueString2 = "りんごを" + aString + "個、みかんを" + bString + "個、きゅうりを" + cString + "本、魚を" + dString + "匹書いました"
print(valueString2)


var valueString3 = "りんごを\(a)個、みかんを\(b)個、きゅうりを\(c)本、魚を\(d)匹書いました"
print(valueString3)



let value1_1: Int = Int.max
let value1_2: Int = Int.min
let value2_1: Int8 = Int8.max
let value2_2: Int8 = Int8.min
let value3_1: Int16 = Int16.max
let value3_2: Int16 = Int16.min
let value4_1: Int32 = Int32.max
let value4_2: Int32 = Int32.min
let value5_1: Int64 = Int64.max
let value5_2: Int64 = Int64.min

let value1u_1: UInt = UInt.max
let value1u_2: UInt = UInt.min
let value2u_1: UInt8 = UInt8.max
let value2u_2: UInt8 = UInt8.min
let value3u_1: UInt16 = UInt16.max
let value3u_2: UInt16 = UInt16.min
let value4u_1: UInt32 = UInt32.max
let value4u_2: UInt32 = UInt32.min
let value5u_1: UInt64 = UInt64.max
let value5u_2: UInt64 = UInt64.min

let varint = 3
let varfloat = 0.3456

print(varint+Int(varfloat))

import UIKit

var datepicker = UIDatePicker()

var array1 : [String] = [String]()
array1.append("りんご")
array1.append("ゴリラ")
array1.append("ラッパ")

let array2 : [String] = ["りんご", "ゴリラ", "ラッパ"]
print(array1)
print(array2)
print(array1[0])
print(array2[1])
array1.count
print(array1[array1.count-1])

func bigger<T: Comparable>(_ val1: T, _ val2: T) -> T {
        return val1 > val2 ? val1 : val2
}

var i1 = 10
var i2 = 20

//print(bigger(val1: i1, val2: i2)) // _ があるとこれはエラーになるが、_ が無いと val1とかの定義が必要
print(bigger(i1, i2)) // 20

var f1: Float = 10.0
var f2: Float = 20.0

print(bigger(f1, f2)) // 20.0

var d1: Double = 10.0
var d2: Double = 20.0

print(bigger(f1, f2)) // 20.0

var dic1 : [Int : String] = [Int : String]()
dic1.count
dic1[1] = "りんご"
dic1[2] = "ゴリラ"
dic1[3] = "ラッパ"

var dic2 : [String : String] = [String : String]()
dic2["りんご"] = "1個"
dic2["ゴリラ"] = "3匹"
dic2["ラッパ"] = "4本"

let dic3 : [String:String] = ["りんご":"1個", "ゴリラ":"3匹", "ラッパ":"4本", "ラッ":"4本"]
//dic3["りんご"] = "1個" //これは追加できない
print(dic2["りんご"]! + dic3["ゴリラ"]! )

for (testkey, testvalue) in dic1 {
    print("キーは\(testkey), 値は\(testvalue)")
}

for (testkey, testvalue) in dic2 {
    print("キーは\(testkey), 値は\(testvalue)")
}

for (testkey, testvalue) in dic3 {
    print("キーは\(testkey), 値は\(testvalue)")
}

var optStr : String?
optStr = "nilじゃなくなった"
if let optStr = optStr {
    print(optStr)
}

optStr = ""
if let optStr = optStr {
    print("これはnilではなく空白文字")
}

optStr = nil
if let optStr = optStr {
    print("これはnil?")
} else {
    print("これはnilです")
}

optStr = "nilじゃなくなった"
if let _ = optStr {
    print(optStr) //これはOptionalのまま出力される
}

if let optStr = optStr {
    print(optStr)
}

func aaa(valval: String?) -> Bool {
    guard let unwrapvalval = valval else {
        print("nilだ!")
        return false
    }
    
    print(unwrapvalval)
    return true
}

var aaa : Bool?
aaa = aaa(valval: "これはnilではありません")
print(aaa!)
print(aaa ?? "bye") //これはaaaがnilの場合byeが出る表記、nilでは無い場合は、aaaのアンラップされた結果が出る

func bbb(valvalvalval tas: Int) -> Int {
    return tas + 1
}

print(bbb(valvalvalval: 2))

func ccc(_ iyaiya: Float) -> Double {
    return Double(iyaiya) / 0.5
}

print(ccc(0.5))

enum erroerror : Error {
    case InvaliedValue
    case ToLong
}

func ccc(hikisu : Int) throws -> String {
    if hikisu < 0 {
        print("InvaliedValue")
        throw erroerror.InvaliedValue
    }
    if hikisu == 0 {
        print("ToLong")
        throw erroerror.ToLong
    }
    return "セーフ"
}

print("1を入れた時、\(try ccc(hikisu : 1))になる")
//print("0を入れた時、\(try ccc(hikisu : 0))になる")
//print("-1を入れた時、\(try ccc(hikisu : -1))になる")

do {
    defer {
        print("終了")
    }
    print("開始")
    try ccc(hikisu : 0)
} catch {
    print("エラー発生")
}

import UIKit

var switchButton = UISwitch()

switchButton.isOn = true
switchButton.isOn = false

let switchButton2 = UISwitch()
switchButton2.isOn = true

switchButton.setOn(true, animated: true)
switchButton.isOn

class dog {
    var name : String?
    var validation : String?
    var birthday : Int?
    
    init(name: String, validation: String = "雑種", birthday: Int = 0) {
        self.name = name
        self.validation = validation
        self.birthday = birthday
    }
    
    func wark () {
        guard let unwrapname = name else { return }
        print("\(unwrapname)が歩きました。")
    }
    
    func bark () {
        if let unwrapname1 = name {
            print("\(unwrapname1)が吠えました。")
        }
    }

    func birthdayFunc () {
        guard let unwrapbirathday = birthday else { return }
        print("\(unwrapbirathday)が誕生日です。")
    }
}

var dog1 = dog(name: "わんだゆー")

dog1.wark()
dog1.bark()

class GuideDog : dog {
    
    override func wark() {
        guard let unwrapname1 = name else { return }
        print("\(unwrapname1)は人を導いて歩きました。")
    }
}

var guide = GuideDog(name: "ポキ")
guide.bark()
guide.wark()
dog1.bark()

struct dogStruct {
    var name: String?
    func dogName(name: String) -> Bool {
        guard let unwrapname = self.name else { return false }
        if unwrapname == name {
            return true
        } else {
            return false
        }
    }
    
    func getDogName() -> String {
        guard let unwrapname = self.name else { return "ダメです" }
        return unwrapname
    }
}

var dst = dogStruct()
dst.name = "わんわん"
print(dst.name!)
var dst1 = dogStruct()
dst1.name = "きゃんきゃん"
print(dst.name!)
dst.dogName(name: dst1.getDogName())
print(dst.name!)

class dogStructClass {
    var name: String?
    func dogName(name: String) -> Bool {
        guard let unwrapname = self.name else { return false }
        if unwrapname == name {
            return true
        } else {
            return false
        }
    }
    
    func getDogName() -> String {
        guard let unwrapname = self.name else { return "ダメです" }
        return unwrapname
    }
}

var dstClass = dogStructClass()
dstClass.name = "わんわん"
print(dstClass.name!)
var dstClass1 = dogStructClass()
dstClass1.name = "きゃんきゃん"
print(dstClass1.name!)
dstClass.dogName(name: dstClass1.getDogName())
print(dstClass1.name!)


func tuple() -> (dog1: String, dog2: String) {
    return (dog1: "わんだゆー", dog2: "ポキ")
}

print(tuple().dog1)
print(tuple().dog2)


for index in 0...9 { //0~9まで
    print("\(index)")
}


let valueRoop = ["りんご", "ゴリラ", "ラッパ"]
for index in 0..<valueRoop.count { //0からvalueRoop.count-1まで
    print("\(valueRoop[index])")
}

for _ in 0...9 {
    print("index")
}

let valueEnum = ["りんご", "ゴリラ", "ラッパ"]
for (index, value) in valueEnum.enumerated() {
    print("\(index) : \(value)")
}

enum Flut {
    case Apple
    case Orrange
    case Mellon
    case Banana
}

var valueSwitch = Flut.Apple
switch valueSwitch {
case Flut.Apple:
    print("りんご")
case Flut.Orrange:
    print("みかん")
case .Mellon:
    print("s")
case .Banana:
    print("s")
}

switch valueSwitch {
case .Apple:
    print("りんご")
case .Orrange:
    print("みかん")
case .Mellon:
    print("s")
case .Banana:
    print("s")
}

valueSwitch = Flut.Orrange
switch valueSwitch {
case .Apple:
    print("りんご")
case .Orrange:
    print("みかん")
    fallthrough
case .Mellon:
    print("メロン")
case .Banana:
    print("バナナ")
}

var valueFilter = [1,5,7,4,2,9,4,0]

let valuekekkad = valueFilter.filter{ (x:Int) -> Bool in
    if x % 2 == 0 {
        return true
    }
    return false
}
print(valuekekkad)

let valuekekkad2 = valueFilter.filter{$0 % 2 == 0}
print(valuekekkad2) // valuekekkad と同じ

let valuekekkad3 = valueFilter.map{$0 * 2}
print(valuekekkad3)

let valuekekkad4 = valueFilter.reduce(0, {$0 + $1})
print(valuekekkad4)

let valuekekkad5 = valueFilter.sorted()
print(valuekekkad5)

for valuekekkad5kekka in valuekekkad5 where valuekekkad5kekka == 5 {
    print("5が出ました！")
}

for valuekekkad5kekka in valuekekkad5 {
    if valuekekkad5kekka == 5 {
        print("5が出ました！")
    } else {
        print("\(valuekekkad5kekka)")
    }
}

let vaRingo = "りんご"
switch vaRingo {
case let sss where sss.hasPrefix("り"):
    print("りんご")
case "みかん":
    print("みかん")
default :
    print("ない")
}

enum FlutRingo {
    case Apple, Orange
}

let flutRingo : [FlutRingo] = [.Apple, .Orange, .Apple, .Apple, .Orange]
for case .Apple in flutRingo {
    print("りんご")
}


class getset2 {
    var _atai:Int = 0
    var atai : Int {
        set(newValue) {
            _atai = newValue
        }
        get {
            return _atai
        }
    }
}

var getset2Inst = getset2()
print(getset2Inst.atai)
getset2Inst.atai = 6
print(getset2Inst.atai)
