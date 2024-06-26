// nil 병합 연산자(nil coalescing operator)

var name: String? = nil //문자열이 있을 수 도 있고, 값이 비어있을 수 도 있다

let username:String = name ?? "Guest" // name에 값이 있다면 그대로, 없다면 "Guest"가 할당될 것.

print(username)

