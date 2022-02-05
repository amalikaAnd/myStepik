/* 25 Вставка символов
Дана строка. Получите новую строку, вставив между двумя символами исходной строки символ *. 
Выведите полученную строку.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
Python
Sample Output:
P*y*t*h*o*n  */

import Foundation
var text = readLine()!  
let x = String(text.enumerated().map { $0 > 0 && $0 % 1 == 0 ? [" ", $1] : [$1]}.joined())
let y = x.replacingOccurrences(of: "[// ]", with: "*", options: .regularExpression, range: nil)
print(y)