//: Playground - noun: a place where people can play

import Foundation


var emptyString = ""  // ""
var stillEmpty = String()  // ""
let helloWorld = "Hello World!"  // "Hello World!"
let a = String(true)  // "true"
let b: Character = "A"  // "A"
let c = String(b)  // "A"
let d = String(3.14)  // "3.14"
let e = String(1000)  // "1000"
let f = "Result = \(d)"  // "Result = 3.14"
let g = "\u{2126}"  // "Ω"
let h = String(repeating: "A", count: 3)  // "AAA"


var aString = "Hello"
var bString = aString
bString += " World!"
print("\(aString)")  // ""Hello\n""


emptyString.isEmpty  // true


let spain = "España"  // "España"
let tilde = "\u{303}"  // "̃"
let country = "Espan" + "\(tilde)" + "a"  // "España"
if country == spain {
    print("match")  // "match\n"
}


if "aaa" < "bbb" {
    print("aaa")  // "aaa\n"
}


let line = "0001 这里放上一些测试数据 %%%%"
line.hasPrefix("0001")  // true
line.hasSuffix("%%%%")  // true


let mixedCase = "AbcDef"
mixedCase.uppercased()  // "ABCDEF"
mixedCase.lowercased()  // "abcdef"


country.characters
country.unicodeScalars  // "España"
country.utf16  // "España"
country.utf8  // "España"


print(country.characters.count)  // "6\n"
print(country.unicodeScalars.count)  // "7\n"
print(country.utf16.count)  // "7\n"
print(country.utf8.count)  // "8\n"


var sentence = "Never odd or even"
for c in sentence.characters {
    print(c)
}


let cafe = "café"
let startIndex = cafe.startIndex  // 0
let endIndex = cafe.endIndex  // 4
cafe[cafe.startIndex]  // c
cafe[cafe.index(after: startIndex)]  // a
cafe[cafe.index(before: endIndex)]  // é
cafe[cafe.index(endIndex, offsetBy: -4)]  // c


for index in cafe.characters.indices {
    print(cafe[index])
}


let word1 = "ABCDEF"
let word2 = "012345"
let indexC = word1.index(word1.startIndex, offsetBy: 2)  // 2
let distance = word1.distance(from: word1.startIndex, to: indexC)  // 2
let digit = word2[word2.index(word2.startIndex, offsetBy: distance)]  // "2"


let fqdn = "useryourload.com"
let rangeOfTLD = fqdn.index(fqdn.endIndex, offsetBy: -3)..<fqdn.endIndex
let tld = fqdn[rangeOfTLD]  // "com"

let rangeOfDomain = fqdn.startIndex..<fqdn.index(fqdn.endIndex, offsetBy: -4)
let domain = fqdn[rangeOfDomain]  // "useryourload"


var template = "<<<Hello>>>"
let indexStartOfText = template.index(template.startIndex, offsetBy: 3)  // 3
let indexEndOfText = template.index(template.endIndex, offsetBy: -3)  // 8
let sub1 = template.substring(from: indexStartOfText)  // "Hello>>>"
let sub2 = template.substring(to: indexEndOfText)  // "<<<Hello"


let rangeOfText = indexStartOfText..<indexEndOfText
let text1 = template.substring(with: rangeOfText)  // "Hello"
let text2 = template.substring(with: indexStartOfText..<indexEndOfText)  // "Hello"


let digits = "0123456789"
let tail = String(digits.characters.dropFirst())  // "123456789"
let less = String(digits.characters.dropFirst(3))  // "3456789"
let head = String(digits.characters.dropLast(3))  // "0123456"


let prefix = String(digits.characters.prefix(2))  // "01"
let suffix = String(digits.characters.suffix(2))  // "89"


let index4 = digits.index(digits.startIndex, offsetBy: 4)  // 4
let thru4 = String(digits.characters.prefix(through: index4))  // "01234"
let upTo4 = String(digits.characters.prefix(upTo: index4))  // "0123"
let from4 = String(digits.characters.suffix(from: index4))  // "456789"


var starts = "******"
starts.insert("X", at: starts.index(starts.startIndex, offsetBy: 3))  // "***X***"
starts.insert(contentsOf: "YX".characters, at: starts.index(starts.endIndex, offsetBy: -3))  // "***XYX***"


let xyzRange = starts.index(starts.startIndex, offsetBy: 3)..<starts.index(starts.endIndex, offsetBy: -3)
starts.replaceSubrange(xyzRange, with: "ABC")  // "***ABC***"


var message = "Welcome"
message += " Time"
message.append("!!!")  // "Welcome Time!!!"


var grades = "ABCDEF"
let ch = grades.remove(at: grades.startIndex)  // "A"
print(grades)  // "BCDEF\n"


var sequence = "ABA BBA ABC"
let midRange = sequence.index(sequence.startIndex, offsetBy: 4)...sequence.index(sequence.endIndex, offsetBy: -4)
sequence.removeSubrange(midRange)  // "ABA ABC"


let welcome = "hello world!"
welcome.capitalized  // "Hello World!"


let text = "123045780984"
if let rangeOfZero = text.range(of: "0", options: .backwards, range: nil, locale: nil) {
    let suffix = text.substring(from: rangeOfZero.upperBound)  // "984"
}

