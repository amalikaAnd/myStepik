// решение мое
import Foundation
var c = readLine()!
let Str = String(Array(97...122).map { Character(Unicode.Scalar($0)) })
  if Str.contains(c) { 
    print(c.uppercased())
  }  else {
    print(c)
   }