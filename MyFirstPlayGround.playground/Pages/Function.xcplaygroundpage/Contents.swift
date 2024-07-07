//: [Previous](@previous)

import Foundation

// 함수는 특정 기능을 수행하는 코드 블럭
// 1. 반복적인 작업을 제거하기 위해 사용

// 함수 메서드
class Car {
    var brand: String
    
    init(brand : String) { //유니티로 치면 Start나 Awake에서 초기화 하듯 쓰는것과 비슷한것같다.
        self.brand = brand
    }
    
    //메서드
    func displayInfo() {
        print("My brand is : \(brand)")
    }
}

//함수 선언
/*
func <함수이름> (매개변수 : 타입 어노테이션) -> 출력타입 {
    // 코드블럭
}

// 함수 사용 방식
함수이름(함수이름 : 값)
 */

// 1. 매개변수(상수) vs 인자
func greet(name: String) -> Void { //Void는 값을 반환하지 않음.
    print("hello \(name)")
}

greet(name:"donghwi")

// 2. 함수의 반환값 처리

func add(a: Int, b: Int) -> Int {
    //return a+b
    a + b //한줄인 경우에 리턴을 생략 가능
}

let result = add(a: 10, b: 20)

print("result = \(result)")

// 3. 외부 매개변수 사용
func greet2(name: String, _ year: Int) {
    print("hello \(name)")
}

greet2(name:"donghwi", 1)

// 4. 매개변수 수정 (기본적으로 상수)
func changeNumber(num: Int) -> Int {
    var num2 = num + 111 // 추가적으로 변수를 선언해서 값을 넣어야 함 num 자체는 상수이니까 값을 직접 할당할 수 없음.
    print(num2)
    return num2
}

changeNumber(num: 3)

// 4.1 in out 키워드

func swapValue(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var num1 = 5
var num2 = 10

print("num1 = \(num1) and num2 = \(num2)")

swapValue(&num1, &num2)

print("num1 = \(num1) and num2 = \(num2)")

// 5. 매개변수 디폴트 값 지정하기
func greet3(name:String = "Guest") -> Void {
    print("hello \(name)")
}

greet(name: "donghwi") //오버라이딩 개념?

// 6. 가변 매개변수

func sum(numbers: Int ...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

let totalresult = sum(numbers:10, 20, 30, 40)

print(totalresult)

// 7. 함수 of 함수
func calculateSum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let sum = (calculateSum)

print(sum(10,20))

func performOperation(_ operation: (Int, Int) -> Int , _ a: Int, _ b: Int) -> Int {
    return operation(a,b)
}

func add2(_ a: Int, _ b: Int) -> Int{a+b}
func multiple(_ a: Int, _ b: Int) -> Int{a*b}

let result2 = performOperation(multiple, 10, 20)
let result3 = performOperation(add2, 10, 20)
print(result2)
print(result3)

// 8. 클로져 
 //- 함수나 클로져 표현식 코드블럭과 주변의 하나이상의 변수와 결합된 형태
 // - 캐시 메모리 구현
 // 익명 이름 없는 함수

let multiple = { (number: Int) -> Int in
        return number * number
}

multiple(10)


let numbers: [Int] = [1,2,3,4,5]

//let squarenumbers = numbers.map({(number: Int) -> Int in
//    return number * number
//})

let squarenumbers = numbers.map{ $0 * $0 }

print(squarenumbers)
//: [Next](@next)
