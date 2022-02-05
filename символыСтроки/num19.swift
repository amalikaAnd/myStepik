/* 19 Удаление фрагмента
Дана строка, в которой буква h встречается минимум два раза (это может быть как маленькая буква h, так и заглавная H). Удалите из этой строки первое и последнее вхождение буквы h, а также все символы, находящиеся между ними.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
In the hole in the ground there lived a hobbit
Sample Output:
In tobbit  */

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
var i = text.indexes(of: "h") //?? nil
var j = text.indexes(of:"H") //?? nil
  if i == [ ] && j == [ ] {                   
  } else {
      var s = i + j
          s = s.sorted()
           var a = s.first!
           let b = s.last!
var t = Array(text)
  if a != 0 {
    let k = t[0...a-1]
    let l = t[a...b]
    let m = t[b+1..<t.endIndex]
      let n = k + m
        print(String(n))
     } else if a == 0  {
          a = b
       let n = t[b+1..<t.endIndex]
         print(String(n))  
   }
}

