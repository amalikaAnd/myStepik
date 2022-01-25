/* Изменить регистр символа
Измените регистр символа, если он был латинской буквой: сделайте его заглавным, если он был строчной буквой и наоборот. 
Любой другой символ выведите как есть, ничего не меняя.
Входные данные
Задан единственный символ C.
Выходные данные
Необходимо вывести  получившийся символ.
Sample Input 1:
V
Sample Output 1:
v
Sample Input 2:
a
Sample Output 2:
A */

import Foundation
var s = readLine()!
var lowerCase = CharacterSet.lowercaseLetters
var upperCase = CharacterSet.uppercaseLetters
let str = String(Array(65...122).map { Character(Unicode.Scalar($0)) })
for currentCharacter in s.unicodeScalars {
    if lowerCase.contains(currentCharacter) && str.contains(s) {
        print(s.uppercased())
    } else if upperCase.contains(currentCharacter) && str.contains(s) {
        print(s.lowercased())
    } else {
        print(s)
    }
}