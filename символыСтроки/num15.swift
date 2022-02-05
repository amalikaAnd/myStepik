/* 15 Две половинки
Дана строка. Разрежьте ее на две равные части (если длина строки — четная, а если длина строки нечетная, то длина первой части должна быть на один символ больше). Переставьте эти две части местами, результат запишите в новую строку и выведите на экран.
При решении этой задачи нельзя пользоваться инструкцией if.
Входные данные
Вводится строка.
Выходные данные
Выведите ответ на задачу.
Sample Input 1:
Hi
Sample Output 1:
iH
Sample Input 2:
Hello
Sample Output 2:
loHel  */

var S: String = readLine()!
var arrayS = Array(S) 
   var k: Int = arrayS.count 
   let i = k / 2  
     if k % 2 == 0 {
       let arrayS1 = arrayS[0...i-1]
       let arrayS2 = arrayS[i..<arrayS.endIndex]   
         print(String(arrayS2 + arrayS1))                
     } else if k % 2 != 0 {
       let arrayS1 = arrayS[0...i]
       let arrayS2 = arrayS[i+1..<arrayS.endIndex]   
         print(String(arrayS2 + arrayS1))                 
 }