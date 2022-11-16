//
//  removeStudent.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/16.
//

import Foundation

func removeStudent() {
    if let student = readLine(), student.count != 0 {
        if studentNameList.contains(student) {
            print("\(student) 학생을 삭제하였습니다.")
            let index = studentNameList.firstIndex(of: student)!
            studentNameList.remove(at: index)
            studentList.remove(at: index)
        } else {
            print("\(student) 학생을 찾지 못했습니다.")
        }
    } else {
        print(studentInputError)
    }
}
