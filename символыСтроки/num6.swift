/* Самое длинное слово

Дана строка, содержащая пробелы. Найдите в ней самое длинное слово, выведите  это слово и его длину. Если таких слов несколько, выведите первое из них.
Входные данные
Задана одна строка, содержащая пробелы. Слова разделены ровно одним пробелом. Пробелы в начале и конце строки допускаются.
Выходные данные
Необходимо вывести самое длинное слово в строке и его длину.
Sample Input:
one two three four five six
Sample Output:
three
5 */

import Foundation
let line: String = readLine()!
  let array = line.components(separatedBy: " ")
  let intLine = array.sorted(by: { $0.count > $1.count})
     print(intLine[0])  
     print(intLine[0].count) 