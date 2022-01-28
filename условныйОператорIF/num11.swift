/* 11 Координаты соседей
Для клетки с координатами (x, y) в таблице размером M × N выведите координаты ее соседей. Соседними называются клетки, имеющие общую сторону.
Входные данные
Даны натуральные числа M, N, x, y (1 ≤ x ≤ M ≤ 109, 1 ≤ y ≤ N ≤ 109).
Выходные данные
Выведите пары координат соседей этой клетки в порядке слева направо сверху вниз.
Sample Input:
3 3
2 2
Sample Output:
1 2
2 3
2 1
3 2    */

import Foundation

let line1: String = readLine()!
let line2: String = readLine()!
let array1 = line1.components(separatedBy: " ")
let intArray1 = array1.map { Int($0)!}
let array2 = line2.components(separatedBy: " ")
let intArray2 = array2.map { Int($0)!}  

   var m: Int = intArray1[0]
   var n: Int = intArray1[1]
   var x: Int = intArray2[0]
   var y: Int = intArray2[1]

           if x != 1 {
              print(x - 1, y)
         }
           if y != n {
              print(x, y + 1)
         }
           if y != 1 {
              print(x, y - 1)
         }
            if x != m {
              print(x + 1, y)
         }