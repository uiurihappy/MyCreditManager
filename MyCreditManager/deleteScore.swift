//
//  deleteScore.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/16.
//

import Foundation

func deleteScore() {
    if let input = readLine() {
        let scoreData = input.split(separator: " ")
        if scoreData.count == 2 {
            let studentName = String(scoreData[0])
            let subject = String(scoreData[1])
            if studentNameList.contains(studentName) {
                let index = studentNameList.firstIndex(of: studentName)!
                studentList[index].scores.removeValue(forKey: subject)
                print("\(studentName) 학생의 \(subject) 과목의 성적이 삭제되었습니다.")
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
