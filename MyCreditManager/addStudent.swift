//
//  addStudent.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/16.
//

import Foundation

func addStudent() {
    if let student: String = readLine(), student.count != 0 {
        if studentNameList.contains(student) {
            print("\(student)은 이미 존재하는 학생입니다. 추가하지 않습니다.")
        } else {
            studentNameList.append(student)
            studentList.append(Student(name: student))
            print("\(student) 학생을 추가했습니다.")
        }
    } else{
        print(studentInputError)
    }
}
