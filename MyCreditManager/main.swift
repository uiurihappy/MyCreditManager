//
//  main.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/11.
//
import Foundation

// 학생 이름 리스트
var studentNameList : [String] = []
// 학생 리스트
var studentList : [Student] = []
// 학점 리스트
let scoreDataDict = ["A+":4.5, "A":4, "B+":3.5, "B":3, "C+":2.5, "C":2, "D+":1.5, "D":1, "F":0]
var studentInputError = "입력이 잘못되었습니다. 다시 확인해주세요"

// Student class
class Student {
    let name: String
    var scores: Dictionary<String, String> = [:]
    
    // 초기화
    init(name: String) {
        self.name = name
    }
    
    func updateScore(subject: String, score: String) {
        // 과목마다 점수 갱신
        scores[subject] = score
    }
    
    func deleteScore(subject: String) {
        // 삭제가 아닌 nil로 대치
        scores[subject] = nil
    }
}


while true{
    print("원하는 기능을 입력해주세요")
    print("1: 학생추가, 2: 학생삭제, 3: 성적추가(변경), 4: 성적삭제, 5: 평점보기, X: 종료")
    let command: String = readLine()!
   
    exterminal(command: command)
    switch command {
    
    case "1":
        print("추가할 학생의 이름을 입력해주세요.");
        
        addStudent()
    case "2":
        print("삭제할 학생의 이름을 입력해주세요");
        
        removeStudent()
    case "3":
        print("성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift A+")
        print("만약에 학생의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다.")
        
        updateScore()
    case "4":
        print("성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.")
        print("입력 예) Mickey Swift")
        
        deleteScore()
    case "5":
        print("평점을 알고 싶은 학생의 이름을 입력해주세요.")
        
        getAverageScoreByName()
    default:
        print("뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요.")
        break;
    }
    
}

func exterminal(command: String) -> Void {
    if command == "X"{
        print("프로그램을 종료합니다...")
        exit(0)
    }
}
