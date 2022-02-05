/* 20 Обращение фрагмента
Дана строка, в которой буква h встречается как минимум два раза. 
Разверните последовательность символов, заключенную между первым и последним 
появлением буквы h, в противоположном порядке.
Имейте ввиду, в тексте могут встречаться заглавные буквы H.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
In the hole in the ground there lived a hobbit
Sample Output:
In th a devil ereht dnuorg eht ni eloh ehobbit */

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
var k = text.indexes(of: "h")
var j = text.indexes(of:"H")
var i = k + j
    i = i.sorted()
  if i.first! == i.last! - 1 {  
    print(text)
  } else {       
var t = Array(text)
  if i != [ ] {
    let k = t[0...i.first!]
    let l = t[i.first!+1...i.last!-1]
    let m = t[i.last!..<t.endIndex]
    let lRevers = l.reversed()
      let n = k + lRevers + m
        print(String(n))
     }
}