//
//  ButtonViewExample.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 1/06/22.
//

import SwiftUI

/*
 Example of how a label and button can be improved when collaborating with a designer
 */

struct BeforeBuyNowView: View {
    var body: some View {
        VStack {
            Text("$99999.00")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    print("Dew it 😈")
                } label: {
                    Text("Buy Now")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.plain)
                .background(.blue)
                .cornerRadius(4)
            }
        }
        .padding()
    }
}

struct AfterBuyNowView: View {
    var body: some View {
        HStack(spacing: 32) {
            VStack(alignment: .leading) {
                Text("Buy Now")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text("$99999.00")
                    .font(.title)
                    .bold()
            }
            
            Button {
                print("Dew it 😈")
            } label: {
                Text("Buy Now")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
            }
            .buttonStyle(.plain)
            .frame(minWidth: 150)
            .cornerRadius(4)
        }
        .fixedSize(horizontal: true, vertical: false)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BeforeBuyNowView()
                .previewDisplayName("Before Buy Now")
            AfterBuyNowView()
                .previewDisplayName("After Buy Now")
        }
        .previewLayout(.sizeThatFits)
        .padding()
        .preferredColorScheme(.dark)
    }
}
