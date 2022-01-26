/* Две одинаковые буквы
Дана строка. Известно, что она содержит ровно две одинаковые буквы. Найдите эти буквы. Гарантируется, что повторяются буквы только одного вида.
Входные данные
На вход подается 1 строка.
Выходные данные
Необходимо вывести  букву, которая встречается в строке дважды.
Sample Input:
fif
Sample Output:
f  */

import Foundation
let string = readLine()!
let character = Array(string)

let duplicates = Array(Set(character.filter({ (i: Character) in character.filter({$0 == i }).count > 1})))cd
print(duplicates[0])
