import Foundation
import SwiftUI
import PlaygroundSupport


// # 클래스
// 1. class 클래스이름: 부모클래스 {
//    프로퍼티(변수)
//    메서드(함수)
//}

class Car{
    var brand: String // 저장 프로퍼티
    var model: String
    var year: Int
    var details : String {
        get{
            return "\(brand), \(model), => \(year)" // 연산 프로퍼티
        }
        
        set(newValue) {
            let components = newValue.split(separator: " ") // "2011 Honda Civic"
            if components.count >= 3 {
                year = Int(components[0]) ?? year
                brand = String(components[1])
                model = String(components[2])
            }
        }
    }
    
    init(brand: String, model: String, year: Int){
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func displayInfo(){
        print("Car : \(brand) \(model) and year : \(year)")
    }
    
    deinit {
        print("메모리에서 제거되었습니다.")
    }
}

// 2. 프로퍼티(저장 프로티 vs 연산 프로퍼티)

// 연산 프로퍼티
// (1). getter(default)
// (2). setter

let myCar = Car(brand: "Hyundai", model: "Sonata", year: 2024)

print(myCar.brand) // getter

myCar.displayInfo()

print(myCar.details) // getter

myCar.details = "2011 Honda Civic" //setter

print(myCar.details) //getter

// 3. 최초의 인스턴스 생성 때만 프로퍼티 초기화 하는 방법

class Car2{
    lazy var brand: String = {
        print("초기화 되었습니다.")
        return "KIA"
    }()
    
    var model: String
    var year: Int
    
    
    init(model: String, year: Int){
        self.model = model
        self.year = year
    }
    
    func displayInfo(){
        print("Car : \(brand) \(model) and year : \(year)")
    }
    
    deinit {
        print("메모리에서 제거되었습니다.")
    }
}

let myCar1 = Car2(model: "porter", year: 2001)
print(myCar1.brand)
let myCar2 = Car2(model: "niro", year: 2023)
print(myCar2.brand)


// 4. 클래스 상속
// 계층구조
// 상위 클래스 (super class)
// 하위 클래스 (sub class)
// 다중 상속을 지원하지 않는다.

// super class
class Car3{
    var brand: String // 저장 프로퍼티
    var model: String
    var year: Int
    var details : String {
        get{
            return "\(brand), \(model), => \(year)" // 연산 프로퍼티
        }
        
        set(newValue) {
            let components = newValue.split(separator: " ") // "2011 Honda Civic"
            if components.count >= 3 {
                year = Int(components[0]) ?? year
                brand = String(components[1])
                model = String(components[2])
            }
        }
    }
    
    init(brand: String, model: String, year: Int){
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func displayinfo(){
        print("Car : \(brand) \(model) and year : \(year)")
    }
    
    deinit {
        print("메모리에서 제거되었습니다.")
    }
}

// sub class

class ElectricCar: Car3 {
    var batteryCapacity: Double
    
    init(brand: String, model: String, year: Int, batteryCapacity: Double) {
        self.batteryCapacity = batteryCapacity // 서브 클래스의 초기화 먼저!! 이후에 슈퍼 클래스 init
        
        super.init(brand: brand, model: model, year: year)
    }
    
    override func displayinfo() {
        super.displayinfo()
        print("Electric Car: \(brand) \(model) Year: \(year) Battery: \(batteryCapacity)")
    }
}

let elCar = ElectricCar(brand: "Tesla", model: "Y", year: 2024, batteryCapacity: 420.83)
elCar.displayinfo()

// 오버라이딩 시 주의할 점
// 1. 매개변수 타입 개수 동일
// 2. 반환타입 동일


// # 프로토콜
// 규칙의 집합체
// 준수한다 conform

protocol Vehicle {
    // 3 개의 프로퍼티'
    var brand : String {get}
    var model : String {get}
    var year : Int {get}
    
    // 1 개의 메서드
    func displayInfo()
}

class Car4 : Vehicle{
    var brand: String // 저장 프로퍼티
    var model: String
    var year: Int
    
    init(brand: String, model: String, year: Int){
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func displayInfo(){
        print("Car : \(brand) \(model) and year : \(year)")
    }
    
    deinit {
        print("메모리에서 제거되었습니다.")
    }
}

struct Bicycle: Vehicle {
    // 3 개의 프로퍼티'
    var brand : String
    var model : String
    var year : Int
    
    init(brand: String, model: String, year: Int){
        self.brand = brand
        self.model = model
        self.year = year
    }
    
    func displayInfo(){
        print("Car : \(brand) \(model) and year : \(year)")
    }
}

func CreateCar() -> some Vehicle {
    return Bicycle(brand: "kia", model: "niro", year: 2024)
}

CreateCar()


// 불투명 반환 타입 opaque return type (some)
// SwiftUI
struct ContentView: View {
    var body : some View {
        Text("Hello SwiftUI")
            .font(.title)
            .foregroundColor(.blue)
    }
}

let contentView = ContentView()
PlaygroundPage.current.setLiveView(contentView)

// # 익스텐션
// ios SDK (내부 모듈을 확장해서 쓸 수 있다.)

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number1 = 10

if number1.isEven {
    print("짝수")
} else {
    print("홀수")
}
