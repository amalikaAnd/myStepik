/*Перевести символ в верхний регистр
Необходимо перевести поданный символ в верхний регистр.
Входные данные
Задан один символ c.
Выходные данные
Если символ является строчной буквой латинского алфавита (то есть буквой от a до z), выведите вместо него аналогичную заглавную букву, иначе выведите тот же самый символ (такая операция называется "перевод в верхний регистр").
Sample Input:
e
Sample Output:
E */

let c = readLine()!
let newC = c.uppercased()  // это просто перевод в верхний регистр
print(newC)

// решение мое 
import Foundation
var mySymbol = readLine()!
let myString = "abcdefghijklmnopqrstuvwxyz"
  if myString.contains(mySymbol) { 
    print(mySymbol.uppercased())
  }  else {
    print(mySymbol)
   }