//
//  ContentRow.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 6/06/22.
//

import SwiftUI

/*
 Reusable view for content
 */

struct ContentRow: View {
    
    var title: String
    var detail: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            Text(detail)
                .fontWeight(.semibold)
                .foregroundColor(.black)
        }
    }
}

struct ContentRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentRow(title: "Food",
                   detail: "Chicken Maple Pancake Fried Potat")
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
