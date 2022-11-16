//
//  getAverageScoreByName.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/16.
//

import Foundation

func getAverageScoreByName() {
    if let student = readLine(), student.count != 0 {
        if studentNameList.contains(student) {
            let index = studentNameList.firstIndex(of: student)!
            var score: Double = 0.0
            for key in studentList[index].scores.keys {
                print("\(key) : \(studentList[index].scores[key]!)")
                
                // 성적 누적
                score += scoreDataDict[studentList[index].scores[key]!]!
            }
            score /= Double(studentList[index].scores.keys.count)
            if score.isNaN == true {
                print("잘못된 성적입니다.")
            } else {
                print("평점 : \(round(score * 100) / 100)")
            }
        } else {
            print("\(student) 학생을 찾지 못했습니다.")
        }
    } else {
        print(studentInputError)
    }
}
