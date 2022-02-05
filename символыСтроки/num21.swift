/* 21 Дублирование фрагмента
Дана строка, в которой буква h встречается как минимум два раза. 
Повторите последовательность символов, заключенную между первым и последним появлением буквы h 
два раза, сами буквы h повторять не надо.
Имейте ввиду, в тексте могут встречаться заглавные буквы H.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
In the hole in the ground there lived a hobbit
Sample Output:
In the hole in the ground there lived a e hole in the ground there lived a hobbit  */
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
    let l = t[0...i.first!]
    let m = t[i.first!+1...i.last!-1]
    let n = t[i.last!..<t.endIndex]
    
      let x = l + m + m + n
        print(String(x))
     }
