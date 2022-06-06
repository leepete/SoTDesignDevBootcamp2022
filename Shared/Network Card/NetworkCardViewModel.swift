//
//  NetworkCardViewModel.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 7/06/22.
//

import SwiftUI

/**
 Represents the data you want to display on the Network Card View
 */

struct NetworkCardViewModel {
    let yearLevel: String
    let graduateYear: Int
    let studentName: String
    let studentId: String
    let qualification: String
    
    static let dummyData = NetworkCardViewModel(
        yearLevel: "YEAR LEVEL",
        graduateYear: 2022,
        studentName: "Joey Tribbiani",
        studentId: "563 987 4224",
        qualification: "Certificate in Web Design\nBachelor of Arts and Digital Media"
    )
}
