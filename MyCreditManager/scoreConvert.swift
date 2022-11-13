//
//  scoreConvert.swift
//  MyCreditManager
//
//  Created by 차윤범 on 2022/11/13.
//

import Foundation

func scoreConvert (score: String) -> Double {
    switch score {
    case "A+":
        return 4.5;
    case "A":
        return 4.0;
    case "B+":
        return 3.5;
    case "B":
        return 3.0;
    case "C+":
        return 2.5;
    case "C":
        return 2.0;
    case "D+":
        return 1.5;
    case "D":
        return 1.0;
    case "F":
        return 0.0;
    default:
        return 0.0;
    }
}
