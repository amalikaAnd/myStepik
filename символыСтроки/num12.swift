/* 12 Конвертирование
Дана строка S, в которой выделили подстроку, состоящую из символов с i-го по j-й включительно (символы строки S нумеруются с единицы) и поменяли местами i-й символ с j-м, (i+1)-й с (j-1)-м и так далее (конвертировали подстроку). Выведите строку S после внесенных изменений.
Входные данные
В первой строке входного файла содержится строка S, длиной не более 1000 символов, во второй – числа i и  j (i ≤  j).
Выходные данные
В выходной файл выведите ответ на задачу.
Sample Input:
vjhoamkts
7 8
Sample Output:
vjhoamtks  */

import Foundation
var S: String = readLine()!
var n: String = readLine()!
let arrayN = n.components(separatedBy: " ")
let intN = arrayN.map { Int($0)!}
var arrayS = Array(S) 
var i: Int = intN[0] 
var j: Int = intN[1]
let k = arrayS.endIndex  
  if j < k {
    let a = arrayS[0..<i-1]
    let b = arrayS[i-1...j-1]
    let c = arrayS[j..<arrayS.endIndex]   
        let bRev = String(b.reversed())
        let newArrayS = a + bRev + c
        let newS = String(newArrayS) 
            print(newS)
      } else {
            print(S)
 }