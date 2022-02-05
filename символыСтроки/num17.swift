/* 17 Первое и последнее вхождение
Дана строка. Если в этой строке буква f встречается только один раз, выведите её индекс.
Если она встречается два и более раз, выведите индекс её первого и последнего появления. 
Если буква f в данной строке не встречается, ничего не выводите.
При решении этой задачи нельзя использовать метод count и циклы.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input 1:
comfort
Sample Output 1:
3
Sample Input 2:
office
Sample Output 2:
1 2  */
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
  if x == [] { 
    print("")
  } else if x.first! == x.last! { 
        print(x.first!)
  } else {
    print(x.first!, x.last!) 
}

// 2 вариант:
var text = readLine()!
let t = Array(text) 
var i = t.firstIndex(of: "f") ?? nil
var j = t.lastIndex(of:"f") ?? nil
  if i == nil {
    print(" ")
  } else if i != j {
    print(i!, j!)
  } else {
    print(i!)     
  }