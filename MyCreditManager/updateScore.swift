//
//  updateScore.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/16.
//

import Foundation

func updateScore() {
    if let scoreInput = readLine(), scoreInput.count != 0 {
        let scoreData = scoreInput.split(separator: " ")
        if scoreData.count == 3 {
            let studentName = String(scoreData[0])
            let subject = String(scoreData[1])
            let score = String(scoreData[2])
            if studentNameList.contains(studentName) {
                let index = studentNameList.firstIndex(of: studentName)!
                studentList[index].scores.updateValue(score, forKey: subject)
                print("\(studentName) 학생의 \(subject) 과목이 \(score)로 추가(변경)되었습니다.")
            } else {
                print("\(studentName) 학생을 찾지 못했습니다.")
            }
        } else {
            print(studentInputError)
        }
    } else {
        print(studentInputError)
    }
}
