/* 10 Билеты на метро - 2
Билет на одну поездку в метро стоит 15 рублей, билет на 5 поездок стоит 70 рублей, билет на 10 поездок стоит 125 рублей, билет на 20 поездок стоит 230 рублей, билет на 60 поездок стоит 440 рублей. Пассажир планирует совершить n поездок. Определите, сколько билетов каждого вида он должен приобрести, чтобы суммарное количество оплаченных поездок было не меньше n, а общая стоимость приобретенных билетов – минимальна.
Входные данные
Дано одно число n - количество поездок.
Выходные данные
Выведите пять целых чисел, равные необходимому количеству билетов на 1, на 5, на 10, на 20, на 60 поездок. Если для какого-то данного n существует несколько способов приобретения билетов одинаковой стоимости, необходимо вывести ту комбинацию билетов, которая дает большее число поездок.
Sample Input:
1
Sample Output:
1 0 0 0 0   */

var n = Int(readLine()!)!
var a = n % 5
var b = n % 10 / 5
var c = n % 20 / 10
var d = n % 60 / 20
var e = n / 60
if a * 15 >= 70 {
    a = 0
	b += 1
} else if a * 15 + b * 70 >= 125 {
	a = 0
	b = 0
	c += 1
} else if a * 15 + b * 70 + c * 125 >= 230 {
	a = 0
	b = 0
	c = 0
    d += 1
} else if a * 15 + b * 70 + c * 125 + d * 230 >= 440 {
	a = 0
	b = 0
	c = 0
    d = 0
	e += 1
}
print(a, b, c, d, e)