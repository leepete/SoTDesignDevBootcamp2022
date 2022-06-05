//
//  SwiftUIView.swift
//  SoT
//
//  Created by Peter Lee on 5/06/22.
//

import SwiftUI

struct NetworkCard: View {
    var body: some View {
        List {
            // Header
            HStack(alignment: .center, spacing: 32) {
                Image("SoT Logo-White")
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    Text("YEAR LEVEL")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Graduate 2022")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
            }
            .listRowBackground(Color.brandMasterPrimary)
            .frame(maxWidth: .infinity, minHeight: 125)
            
            // Content

            
            // Footer
        }
    }
}

struct NetworkCard_Previews: PreviewProvider {
    static var previews: some View {
        NetworkCard()
    }
}
