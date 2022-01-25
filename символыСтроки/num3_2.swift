// my!
import Foundation
var c = readLine()!
let str1 = String(Array(97...122).map { Character(Unicode.Scalar($0)) })
let str2 = String(Array(65...90).map { Character(Unicode.Scalar($0)) })
  if str1.contains(c) { 
    print(c.uppercased())
  } else if str2.contains(c) { 
    print(c.lowercased())
  } else {
    print(c)
   }