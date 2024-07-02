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


//: [Next](@next)
