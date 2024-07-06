//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// Control Flow
// 1. conditional control flow(조건부 제어 흐름)
// if-else 구문
let temp = 25

if temp < 10 {
    print("cold")
} else if temp >= 10 && temp < 20 {
    print("cool")
} else if temp >= 20 && temp < 30 {
    print("warm")
} else {
    print("hot")
}

// guard 구문 if-else 문 보다 시인성, 메모리, 속도 면에서 유리함.

func greet(person: String?){
    // nil
    guard let name = person else{ // guard 조건 elese
        print("No Name Provided") // name이 nil 이라면
        return
    }
    // real value
    print("Hello \(name)") // nil이 아니라면
}

greet(person:nil)
greet(person:"donghwi")

// switch
let number = 3

switch number { //break 없이도 해당 조건이 만족하면 빠져나감.
case 0:
    print("zero")
    fallthrough //조건이 만족한다면 하위 케이스문 모두 실행.
case 1,2,3:
    print("small number")
    //fallthrough
case 4...7:
    print("midium number")
    fallthrough
default:
    print("default")
    break
    //print("negative number")
}

// 2. looping control flow

// for - in
for i in 1...5 {
    print(i)
}

for _ in 1...5 {
    print("number is good")
}

let number2 = [1,2,3,4,5]
for num in number2 {
    print(num)
}

let person :[String : Any] = ["name":"john", "city":"seoul", "age":30] //타입 어노테이션 중에서 key, value를 string, any로 지정할 수 있다

for (key, value) in person{
    print("\(key) : \(value)")
}

// while, repeat-while 최소 1회가 실행되는지의 차이
var count = 0
while count < 5 {
    print("count", count)
    count += 1
}

var number3 = 5
repeat {
    print("number3",number3)
    number3 += 1
} while number3 < 5

//continue
for number in 1...10{
    if number % 2 == 0 {
        continue //다시 조건문으로 돌아간다.
    }
    print(number)
}

for test in 1...5 {
    if test % 2 == 0 { // 조건을 만족하면 for in 문으로 
        continue
    }
    print("test", test)
}
