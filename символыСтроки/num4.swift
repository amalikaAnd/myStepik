/* Совпадают ли строки?
Необходимо определить, совпадают ли 2 строки.
Входные данные
Заданы 2 строки.
Выходные данные
Необходимо вывести  слово yes, если строки совпадают, и слово no в противном случае.
Sample Input:
a
a
Sample Output:
yes  */
import Foundation
let line1: String = readLine()!
let line2: String = readLine()!
  if line1.contains(line2) {
     print("yes")
  } else {
    print("no")     
  }