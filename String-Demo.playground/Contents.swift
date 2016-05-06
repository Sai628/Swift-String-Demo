//: Playground - noun: a place where people can play

import Foundation


var emptyString = ""
var stillEmpty = String()
let helloWorld = "Hello World!"
let a = String(true)
let b: Character = "A"
let c = String(b)
let d = String(3.14)
let e = String(1000)
let f = "Result = \(d)"
let g = "\u{2126}"
let h = String(count: 3, repeatedValue: Character("A"))


var aString = "Hello"
var bString = aString
bString += " World!"
print("\(aString)")


emptyString.isEmpty


let spain = "España"
let tilde = "\u{303}"
let country = "Espan" + "\(tilde)" + "a"
if country == spain {
    print("match")
}


if "aaa" < "bbb" {
    print("aaa")
}


let line = "0001 这里放上一些测试数据 %%%%"
line.hasPrefix("0001")
line.hasSuffix("%%%%")


let mixedCase = "AbcDef"
mixedCase.uppercaseString
mixedCase.lowercaseString


country.characters
country.unicodeScalars
country.utf16
country.utf8


print(country.characters.count)
print(country.unicodeScalars.count)
print(country.utf16.count)
print(country.utf8.count)


var sentence = "Never odd or even"
for c in sentence.characters {
    print(c)
}


let cafe = "café"
cafe.startIndex
cafe.endIndex


cafe[cafe.startIndex]
cafe[cafe.startIndex.successor()]
cafe[cafe.startIndex.successor().successor()]
cafe[cafe.endIndex.predecessor()]
cafe[cafe.endIndex.advancedBy(-4)]


for index in cafe.characters.indices {
    print(cafe[index])
}


let word1 = "ABCDEF"
let word2 = "012345"
let indexC = word1.startIndex.advancedBy(2)
let distance = word1.startIndex.distanceTo(indexC)
let digit = word2[word2.startIndex.advancedBy(distance)]


let fqdn = "useryourload.com"
let rangeOfTLD = fqdn.endIndex.advancedBy(-3)..<fqdn.endIndex
let tld = fqdn[rangeOfTLD]

let rangeOfDomain = fqdn.startIndex..<fqdn.endIndex.advancedBy(-4)
let domain = fqdn[rangeOfDomain]


var template = "<<<Hello>>>"
let indexStartOfText = template.startIndex.advancedBy(3)
let indexEndOfText = template.endIndex.advancedBy(-3)
let sub1 = template.substringFromIndex(indexStartOfText)
let sub2 = template.substringToIndex(indexEndOfText)


let rangeOfText = indexStartOfText..<indexEndOfText
let text1 = template.substringWithRange(rangeOfText)
let text2 = template.substringWithRange(indexStartOfText..<indexEndOfText)


let digits = "0123456789"
let tail = String(digits.characters.dropFirst())
let less = String(digits.characters.dropFirst(3))
let head = String(digits.characters.dropLast(3))


let prefix = String(digits.characters.prefix(2))
let suffix = String(digits.characters.suffix(2))


let index4 = digits.startIndex.advancedBy(4)
let thru4 = String(digits.characters.prefixThrough(index4))
let upTo4 = String(digits.characters.prefixUpTo(index4))
let from4 = String(digits.characters.suffixFrom(index4))


var starts = "******"
starts.insert("X", atIndex: starts.startIndex.advancedBy(3))
starts.insertContentsOf("YX".characters, at: starts.endIndex.advancedBy(-3))


let xyzRange = starts.startIndex.advancedBy(3)..<starts.endIndex.advancedBy(-3)
starts.replaceRange(xyzRange, with: "ABC")


var message = "Welcome"
message += " Time"
message.appendContentsOf("!!!")


var grades = "ABCDEF"
let ch = grades.removeAtIndex(grades.startIndex)
print(grades)


var sequence = "ABA BBA ABC"
let midRange = sequence.startIndex.advancedBy(4)...sequence.endIndex.advancedBy(-4)
sequence.removeRange(midRange)


let welcome = "hello world!"
welcome.capitalizedString


let text = "123045780984"
if let rangeOfZero = text.rangeOfString("0", options: NSStringCompareOptions.BackwardsSearch, range: nil, locale: nil) {
    let suffix = text.substringFromIndex(rangeOfZero.endIndex)
}


