//
//  NetworkCardFrontView.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 5/06/22.
//

import SwiftUI

/**
 Front presentation of the Network Card
 */

struct NetworkCardFrontView: View {
    
    let viewModel: NetworkCardViewModel
    
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                // Header
                HeaderView(yearLevel: viewModel.yearLevel,
                           graduateYear: viewModel.graduateYear,
                           imageName: "SoT Logo-White",
                           backgroundColor: .brandMasterPrimary,
                           textColor: .white)
            
                // Content
                VStack(alignment: .leading, spacing: 0) {
                    
                    // Header
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Summer of Tech")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                        Text("Student Network Card")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                    }
                    .padding()
                    
                    // Rows
                    VStack(alignment: .leading, spacing: 24) {
                        ContentRow(title: "Member Name", detail: viewModel.studentName)
                        ContentRow(title: "Member ID", detail: viewModel.studentId)
                    }
                    .padding()
                }
                .frame(minHeight: 180, alignment: .top)
                
                // Footer
                HStack(alignment: .center) {
                    Image("SoT Logo-Red")
                    Spacer()
                    Image("Wave")
                }
                .frame(maxWidth: .infinity, minHeight: 150, alignment: .bottom)
                .padding()
                
            }
            .background(.white)
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.brandSecondary, lineWidth: 1)
            )
            .padding()
            
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

/**
 Back presentation of the Network Card
 */

struct NetworkCardBackView: View {
    
    let viewModel: NetworkCardViewModel
    
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                // Header
                HeaderView(yearLevel: viewModel.yearLevel,
                           graduateYear: viewModel.graduateYear,
                           imageName: "SoT Logo-Text",
                           backgroundColor: .brandMasterSecondary,
                           textColor: .black)
                
                // Content Rows
                VStack {
                    VStack(alignment: .leading, spacing: 24) {
                        ContentRow(title: "Member Name", detail: viewModel.studentName)
                        ContentRow(title: "Study Qualification", detail: viewModel.qualification)
                    }
                    .padding()
                }
                .frame(minHeight: 187, alignment: .top)
                
                // Footer
                HStack(alignment: .center) {
                    Image("QR Code")
                }
                .frame(maxWidth: .infinity, minHeight: 150, alignment: .bottom)
                .padding()
            }
            .background(Color.brandSecondary)
            .cornerRadius(30)
            .padding()
        }
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}


/*
 SwiftUI Preview of front and back presentation of the Network Card
 */

struct NetworkCard_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView(viewModel: .dummyData)
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Interactive Card")
        NetworkCardFrontView(viewModel: .dummyData, degree: .constant(0))
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Front Side")
        NetworkCardBackView(viewModel: .dummyData, degree: .constant(0))
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Back Side")
    }
}
