// 하나의 함수당 하나의 역할만을 하게끔 하고, 클래스가 가지는 메서드로써 역할을 수행하게끔 풀이해보았습니다.

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
    var total = 0
    
    //TODO: 생성자를 만들어주세요.
    init (height: Float, age: Int, numberOfHouses: Int?) {
        self.height = height
        self.age = age
        self.numberOfHouses = numberOfHouses
    }

    // 키 가산점 메서드
    func addHeightPoint() {
        let heightPoint: Float = self.height
        /*
         160 이상 : 10점
         151...159 : 5점
         0...150 : 0점
         */
        switch heightPoint {
        case 160... :
            total += 10
            
        case 151.0...159.9:
            total += 5
            
        default:
            total
        }
    }
    
    
    // 나이 가산점 메서드
    func addAgePoint() {
        let agePoint: Int = self.age
        /*
         28...34 : 10점
         35...45 : 5점
         28 미만 40(45초과여야 될 것 같습니다.) 이상 : 0점
         */
        switch agePoint {
        case 28...34:
            total += 10
            
        case 35...45:
            total += 5
            
        default:
            total
        }
    }
    
    
    // 집 가산점 메서드
    func addHousesPoint() {
        /*
         집은 있으면 좋고, 없어도 괜찮습니다.
         집이 있을 경우 : 10점
         */
        if let numberOfHousesPoint = self.numberOfHouses, numberOfHousesPoint >= 1 {
            total += 10
        }
    }
    
    
    // 이상형 여부를 가리는 메서드
    func judgeRomance() -> Bool {
        var isRomance = true
        
        if total >= 20 {
            isRomance = true
            print("(\(total)점, \(isRomance)) : 이상형입니다.")
        } else {
            isRomance = false
            print("(\(total)점, \(isRomance)) : 이상형이 아닙니다.")
        }
        
        return isRomance
    }
    
    
    // 이상형 판독 최종 메서드.
    func isThisPersonMyRomance() {
        // 키 가산점 메서드
        addHeightPoint()
        // 나이 가산점 메서드
        addAgePoint()
        // 집 가산점 메
        addHousesPoint()
        
        // 최종 판단
        judgeRomance()
    }
}

    // Test
    // Person을 하나 생성해주세요. 값은 임의로 정하셔도 됩니다.
    //isThisPersonMyRomance(person: Person(height: <#T##Float#>, age: <#T##Int#>, numberOfHouses: <#T##Int?#>))
let a = Person(height: 148.3, age: 33, numberOfHouses: 0)
a.isThisPersonMyRomance()

let b = Person(height: 187.0, age: 28, numberOfHouses: 1)
b.isThisPersonMyRomance()

let c = Person(height: 165.0, age: 36, numberOfHouses: 3)
c.isThisPersonMyRomance()


