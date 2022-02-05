/* 14 Делаем срезы
Выполните разбор строки, согласно приведенным правилам.
Входные данные
Дана строка.
Выходные данные
Сначала выведите третий символ этой строки.
Во второй строке выведите предпоследний символ этой строки.
В третьей строке выведите первые пять символов этой строки.
В четвертой строке выведите всю строку, кроме последних двух символов.
В пятой строке выведите все символы с четными индексами (считая, что индексация начинается с 0, поэтому символы выводятся начиная с первого).
В шестой строке выведите все символы с нечетными индексами, то есть начиная со второго символа строки.
В седьмой строке выведите все символы в обратном порядке.
В восьмой строке выведите все символы строки через один в обратном порядке, начиная с последнего.
В девятой строке выведите длину данной строки.
Sample Input:
Abrakadabra
Sample Output:
r
r
Abrak
Abrakadab
Arkdba
baaar
arbadakarbA
abdkrA
11  */
var s = readLine()!
var a = Array(s)
let str1 = a[2]
  print(str1)
let str2 = a[a.endIndex-2]
  print(str2)
let str3 = String(s.prefix(5))
  print(str3)
let str4 = a[0..<a.endIndex-2]
  print(String(str4))
let str5 = a.enumerated().filter { $0.0 % 2 == 0 }.map{ $0.1 }
  print(String(str5))
let str6 = a.enumerated().filter { $0.0 % 2 != 0 }.map{ $0.1 }
  print(String(str6))
  print(String(s.reversed()))
let str = a.reversed()
let str8 = str.enumerated().filter { $0.0 % 2 == 0 }.map{ $0.1 }
  print(String(str8))
  print(a.count)
