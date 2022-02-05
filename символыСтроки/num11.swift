/* 11 Шифр Юлия
Юлий Цезарь использовал свой способ шифрования текста. Каждая буква заменялась на следующую по алфавиту через K позиций по кругу. Необходимо по заданной шифровке определить исходный текст.
Входные данные
В первой строке дана шифровка, состоящая из заглавных латинских букв. Во второй строке число K (1 ≤ K ≤ 10).
Выходные данные
Требуется вывести результат расшифровки.
Sample Input 1:
XPSE
1
Sample Output 1:
WORD
Sample Input 2:
ZABC
3
Sample Output 2:
WXYZ   */
let message = readLine()!
let n = Int(readLine()!)!
 func encrypt(message: String, shift: Int) -> String {
  func shiftLetter(ucs: UnicodeScalar) -> UnicodeScalar {
        let firstLetter = Int(UnicodeScalar("A").value)
        let lastLetter = Int(UnicodeScalar("Z").value)
        let letterCount = lastLetter - firstLetter + 1
        let value = Int(ucs.value)
          switch value {
            case firstLetter...lastLetter:       
              var offset = value - firstLetter
                  offset -= shift
                  offset = (offset % letterCount + letterCount) % letterCount            
            return UnicodeScalar(firstLetter + offset)!
        default:            
            return ucs
        }
    }
    let msg = message.uppercased()
    return String(String.UnicodeScalarView(msg.unicodeScalars.map(shiftLetter)))
}
print(encrypt(message: message, shift: n)) 

