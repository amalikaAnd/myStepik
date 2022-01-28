/* 6 Квадратное уравнение
Даны целые числа a, b, c. Найдите все решения квадратного уравнения ax2 + bx + c = 0.
Входные данные
Даны три целых числа, a не равно 0.
Выходные данные
Выведите два целых числа, если уравнение имеет два корня (выводить в порядке возрастания, 
через пробел), одно целое число – при наличии одного корня. При отсутствии целых корней 
ничего выводить не нужно.
Sample Input:
1
0
0
Sample Output:
0    */

import Foundation                 // 9 тест не пройден!!!
var a = Double(readLine()!)!
var b = Double(readLine()!)!
var c = Double(readLine()!)!
var d = b * b - 4 * a * c
var s = sqrt(d)       

var x1 = (-b - s) / (2 * a)
var x2 = (-b + s) / (2 * a)
var x3 = -b / (2 * a)
     if d == 0 && a != 0 {
	      print(Int(x3))
        } else if d > 0 && x1 < x2 && a != 0{			  
             print(Int(x1), Int(x2))
         } else if d > 0 && x1 > x2 && a != 0{
	          print(Int(x2), Int(x1))
          } else if ((a == 0 && b == 0 ) || ( b == 0 && ((c > 0 && a > 0) || (c < 0 && a < 0))) || d < 0) {
	           print("")
           } else if (( b == 0 && c == 0) || (a == 0 && c == 0)) {
                print(0)
             } else if (b == 0 && c < 0) {
                  x1 = sqrt(-c/a)
                  x2 = -sqrt(-c/a) 
	                print(Int(x1), Int(x2))
               } else if (a == 0 && c != 0) {
                      print(Int(-c / b))
      }