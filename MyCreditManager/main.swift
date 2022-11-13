//
//  main.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/11.
//
import Foundation

// dictionary structure
var student_scores:[String:[String:String]] = [:]

while true{
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let command: String = readLine()!
    if command == "X"{
        print("프로그램을 종료합니다...")
        break
    }
    switch command {
    case "1":
        print("추가할 학생의 이름을 입력해주세요.");
        
        let student: String = readLine()!
        for key in student_scores.keys {
            if (key == student){
                print("\(student)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
            }else{
                student_scores[student] = [:]
                print("\(student)이(가) 추가되었습니다.")
            }
        }
        break;
    case "2":
        print("삭제할 학생의 이름을 입력해주세요");
        
        let student: String = readLine()!
        
        student_scores.removeValue(forKey: student)
        break;
    case "3":
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift A+")
        print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
        
        let student: String = readLine()!
        let subject: String = readLine()!
        let grade: String = readLine()!
        
        student_scores[student]?.updateValue(grade, forKey: subject)
    case "4":
        print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift")
        
        let student: String = readLine()!
        let subject: String = readLine()!
        
        student_scores[student]?.removeValue(forKey: subject)
    case "5":
        print("평점을 알고 싶은 학생의 이름을 입력해주세요.")
        var student: String = readLine()!
        var avg: Double = 0.0;
        var length: Int = 0;
        
        for (key, value) in student_scores {
            if (student == key) {
                for item in value {
                    print("\(item.key): \(item.value)")
                    avg += scoreConvert(score: item.value)
                }
                length = value.count
            } else{
                print("\(student) 학생을 찾지 못했습니다")
                break;
            }
        }
        
        avg = avg / Double(length)
        print("평점 : \(round(avg * 100) / 100)")
    default:
        print("입력이 잘못되었습니다. 다시 확인해주세요.")
        break;
    }
    
}
