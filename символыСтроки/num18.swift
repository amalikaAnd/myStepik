/* 18 Второе вхождение
Дана строка. Найдите в этой строке второе вхождение буквы f, и выведите индекс этого вхождения. Если буква f в данной строке встречается только один раз, выведите число -1, а если не встречается ни разу, выведите число -2.
При решении этой задачи нельзя использовать метод count.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input 1:
comfort
Sample Output 1:
-1
Sample Input 2:
coffee
Sample Output 2:
3  */

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
var x = text.indexes(of: "f")
 let n = x.count
 if x == [] { 
     print(-2)
    } else if n == 1 { 
        print(-1)
  } else {
     print(x[1]) 
}

