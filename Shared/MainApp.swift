//
//  MainApp.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 1/06/22.
//

import SwiftUI

/**
    This is where the code runs from
 */

@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(viewModel: .dummyData)
            
            // TODO: Tweak your information here :D
    
//            let yourDataModel = NetworkCardViewModel(yearLevel: "66th Year",
//                                                 graduateYear: 2019,
//                                                 studentName: "Obi-Wan Kenobi",
//                                                 studentId: "300 333 444",
//                                                 qualification: "Masters in the Force")
//            CardView(viewModel: yourDataModel)
        }
    }
}
