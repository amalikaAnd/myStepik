/* 23 Удаление символа
Дана строка. Удалите из этой строки все символы @.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input:
Bilbo.Baggins@bagend.hobbiton.shire.me
Sample Output:
Bilbo.Bagginsbagend.hobbiton.shire.me  */

import Foundation
var x = readLine()!
  let stringToReplace = "@"
    let outputStr = x.replacingOccurrences(of: stringToReplace, with: "")
  print(outputStr.trimmingCharacters(in: NSCharacterSet.whitespaces))