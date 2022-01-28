/* 7 Тип треугольника
Определите тип треугольника (остроугольный, тупоугольный, прямоугольный) с данными сторонами.
Входные данные
Даны три натуральных числа – стороны треугольника.
Выходные данные
Необходимо вывести одно из слов: right для прямоугольного треугольника, acute для остроугольного треугольника, obtuse для тупоугольного треугольника или impossible, если входные числа не образуют треугольника.
Sample Input:
3
4
5
Sample Output:
right  */
var a = Int(readLine()!)!
var b = Int(readLine()!)!
var c = Int(readLine()!)!
if (a > 0 && b > 0 && c > 0) && ((a + b) > c && c > abs(a - b)) && ((b + c) > a && a > abs(b - c)) && ((a + c) > b && b > abs(a - c)) && ((a + b + c) >= 0) {
  a = a * a
  b = b * b
  c = c * c
	
 if c == a + b || a == b + c || b == a + c {
	print("right")	 
  } else if c > (a + b) || a > (b + c) || b > (a + c) {
	print("obtuse")	 
  } else if c < (a + b) && a < (b + c) && b < (a + c) {
	print("acute")		 
  } else if a == b && b == c {
 	print("acute")
  }	
} else {
	print("impossible")
}
