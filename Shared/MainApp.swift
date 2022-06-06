//
//  MainApp.swift
//  Shared
//
//  Created by Peter Lee on 1/06/22.
//

import SwiftUI

@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(viewModel: .dummyData)
            
//            let viewModel = NetworkCardViewModel(yearLevel: "66th Year",
//                                                 graduateYear: 2019,
//                                                 studentName: "Obi-Wan Kenobi",
//                                                 studentId: "300 333 444",
//                                                 qualification: "Masters in the Force")
//            CardView(viewModel: viewModel)
        }
    }
}
