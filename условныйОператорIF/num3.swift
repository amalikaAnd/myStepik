
/* 3 Координатные четверти
Даны координаты двух точек на плоскости, требуется определить, лежат ли они в одной 
координатной четверти или нет (все координаты отличны от нуля).*/
var x1 = Int(readLine()!)!
var y1 = Int(readLine()!)!
var x2 = Int(readLine()!)!
var y2 = Int(readLine()!)!
if x1 > 0 && x2 > 0 && y1 > 0 && y2 > 0 {
	print("YES")				  
} else if x1 > 0 && x2 > 0 && y1 < 0 && y2 < 0 {
	print("YES")	
} else if x1 < 0 && x2 < 0 && y1 > 0 && y2 > 0 {
	print("YES")
} else if x1 < 0 && x2 < 0 && y1 < 0 && y2 < 0 {
	print("YES")
} else {
	print("NO")   
}	