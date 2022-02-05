/* 13 Удали пробелы
Дана строка, Вам требуется преобразовать все идущие подряд пробелы в один. Если пробелы есть в начале и в конце строки - их нужно убрать.
Входные данные
Длина строки не превосходит 1000.
Выходные данные
Выведите измененную строку.
Sample Input:
nz d urp lren s bwz  boom  t a   j    ho    vi
Sample Output:
nz d urp lren s bwz boom t a j ho vi */

import Foundation
var str = readLine()!
extension String {
    var edit: String {
        return replacingOccurrences(of: "[\\s\n]+", with: " ", options: .regularExpression, range: nil)
    }
}
print(str.edit)

// 2 вариант:
var str = readLine()!
 func space (input: String) -> String {
     var x = false
     var s = ""
     for letter in input {
         if letter == " " {
            if x {continue} 
              x = true
            } else {
              x = false
       }
        s.append(letter)                  
     }
   return s
 }
print(space(input:str))



