// 제공된 샘플 소스를 가지고 풀이해보았습니다.

/*
 내가 좋아하는 이상형 찾기!
 
 목표: 이상형인지 아닌지를 알려주는 함수 만들기
 
 사람의 height, age, weeklyFreetime, numberOfHouses를 가지고
 총합이 25점이 넘으면 이상형으로 판단하는 함수를 만들어 보아요.
 
 Age를 비교할때는 switch를 써주세요!
 
 ----height----
 키는 160 이상이면 10점
 150~160 사이이면 5점
 150이하는 0점
 
 ----age----
 나이는 28~34사이에 있으면 10점
 35~45사이이면 5점
 28미만 혹은 40이 넘으면 0점
 
 ----numberOfHouses----
 집은 있으면 좋고 없어도 괜찮습니다.
 집이 있으면 10점 가산점이 붙습니다.
 
 총 합이 20이상 이면 True, 아니면 False인 함수를 만들어주세요.
*/

import UIKit

class Person {
    let height: Float
    let age: Int
    let numberOfHouses: Int?
    
    init(height: Float, age: Int, numberOfHouses: Int?) {
        self.height = height
        self.age = age
        self.numberOfHouses = numberOfHouses
    }
}

func isThisPersonRomance(person: Person) -> Bool {
    var total = 0
    
    // 키 가산점
    let heightPoint = person.height
    
    switch heightPoint {
    case 160.0... :
        total += 10
        
    case 151.0...159.9 :
        total += 5
        
    default:
        total
    }
    
    
    // 나이 가산점
    let agePoint = person.age
    
    switch agePoint {
    case 28...34:
        total += 10
        
    case 35...45:
        total += 5
        
    default:
        total
    }
    
    // 집 가산점
    if let housesPoint = person.numberOfHouses, housesPoint >= 1 {
        total += 10
    }
    
    // 최종 판단
    var trueRomance = true
    if total >= 20 {
        trueRomance = true
        print("(\(total)점, \(trueRomance)) : 이상형입니다.")
    } else {
        trueRomance = false
        print("(\(total)점, \(trueRomance)) : 이상형이 아닙니다.")
    }
    
    return trueRomance
}

// Test
// Person을 하나 생성해주세요. 값은 임의로 정하셔도 됩니다.
//isThisPersonMyRomance(person: Person(height: <#T##Float#>, age: <#T##Int#>, numberOfHouses: <#T##Int?#>))
isThisPersonRomance(person: Person(height: 168.2, age: 32, numberOfHouses: 0))
isThisPersonRomance(person: Person(height: 188.2, age: 21, numberOfHouses: 1))
isThisPersonRomance(person: Person(height: 149.9, age: 23, numberOfHouses: 3))
