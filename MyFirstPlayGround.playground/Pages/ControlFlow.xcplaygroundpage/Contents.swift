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
// 2. looping control flow
// 3.

//: [Next](@next)
