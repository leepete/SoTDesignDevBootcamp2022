//
//  SwiftUIView.swift
//  SoT
//
//  Created by Peter Lee on 5/06/22.
//

import SwiftUI

struct NetworkCardFrontView: View {
    
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                // Header
                HeaderView(yearLevel: "YEAR LEVEL",
                           graduateYear: 2022,
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
                    VStack(spacing: 24) {
                        ContentRow(title: "Member Name", detail: "Joey Tribbiani")
                        ContentRow(title: "Member ID", detail: "563 987 4224")
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

struct NetworkCardBackView: View {
    
    @Binding var degree : Double
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                
                // Header
                HeaderView(yearLevel: "YEAR LEVEL",
                           graduateYear: 2022,
                           imageName: "SoT Logo-Text",
                           backgroundColor: .brandMasterSecondary,
                           textColor: .black)
                
                // Content Rows
                VStack {
                    VStack(alignment: .leading, spacing: 24) {
                        ContentRow(title: "Member Name", detail: "Joey Tribbiani")
                        ContentRow(title: "Study Qualification", detail: "Certificate in Web Design\nBachelor of Arts and Digital Media")
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

struct NetworkCard_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView()
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Interactive Card")
        NetworkCardFrontView(degree: .constant(0))
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Front Side")
        NetworkCardBackView(degree: .constant(0))
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Back Side")
    }
}
