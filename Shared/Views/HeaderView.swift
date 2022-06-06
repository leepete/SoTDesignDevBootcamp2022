//
//  HeaderView.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 6/06/22.
//

import SwiftUI

struct HeaderView: View {
    
    var yearLevel: String
    var graduateYear: Int
    
    var imageName: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        HStack(alignment: .center) {
            Image(imageName)
                .padding()
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Text(yearLevel)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(textColor)
                Text("Graduate \(String(graduateYear))")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(textColor)
            }
            .padding()
        }
        .background(backgroundColor)
        
    }
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(yearLevel: "3rd Year",
                   graduateYear: 2025,
                   imageName: "SoT Logo-White",
                   backgroundColor: .brandMasterPrimary,
                   textColor: .white)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
