/* 26 Удалить каждый третий символ
Дана строка. Удалите из нее все символы, чьи индексы делятся на 3.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
Python
Sample Output:
yton  */
import Foundation
var text = readLine()!  
  var a = Array(text)
    let str = a.enumerated().filter { $0.0 % 3 != 0 }.map{ $0.1 }
  print(String(str))
