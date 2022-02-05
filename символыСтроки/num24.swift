/* 24 Замена внутри фрагмента
Дана строка. Замените в этой строке все появления буквы h на букву H, кроме первого 
и последнего вхождения.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
In the hole in the ground there lived a hobbit
Sample Output:
In the Hole in tHe ground tHere lived a hobbit  */

import Foundation
var text = readLine()!
extension String {
  func indexes(of character: String) -> [Int] {
    precondition(character.count == 1, "Must be single character")
    return self.enumerated().reduce([]) { partial, element  in
      if String(element.element) == character {
        return partial + [element.offset]
      }
      return partial
    }
  }
}
var i = text.indexes(of: "h") 
  if i == [ ] || i.first! == i.last! - 1 || i.count == 1 {  
    print(text)
  } else {       
      var t = Array(text)
        if i != [ ] {
          let i1 = t[0...i.first!]
          let i2 = t[i.first!+1...i.last!-1]
          let i3 = t[i.last!..<t.endIndex]
    let x = String(i2)
    let y = x.replacingOccurrences(of: "[//h]", with: "H", options: .regularExpression, range: nil)
       let H = Array(y) 
       
    let newText = i1 + H + i3
        print(String(newText))
     }     
}
