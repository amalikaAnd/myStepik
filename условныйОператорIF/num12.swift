/* 12 Апельсины бочками
Бизнесмен Василий после прочтения известной книги решил открыть новый бизнес – отгружать апельсины бочками. Партнерам важно знать сколько именно бочек апельсинов отгружается каждый день.
Мобильный телефон Василия поддерживает только транслит, поэтому он передает сообщения вида "N bochek" . Например, "3 bochki" или "1 bochka" .
Напишите программу, которая выбирает правильное слово (из "bochka" , "bochek" , "bochki" ) в зависимости от N.
Входные данные
Одно число N (0 ≤ N ≤ 1000).
Выходные данные
Фраза на транслите (см. примеры).
Sample Input:
15
Sample Output:
15 bochek    */

var n = Int(readLine()!)!
if 5...20 ~= n || n == 0 || 11...14 ~= (n % 100) {
  print("\(n) bochek")				
} else if n % 10 == 1 || n % 100 == 1 {
  print("\(n) bochka")						   
} else if 2...4 ~= (n % 10) {
  print("\(n) bochki")
} else if 2...4 ~= (n % 100) {
  print("\(n) bochki")	
} else {
  print("\(n) bochek")	   
}
