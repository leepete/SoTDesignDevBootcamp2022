//
//  CardView.swift
//  SoTDesignDevBootcamp2022
//
//  Created by Peter Lee on 6/06/22.
//

import SwiftUI

/**
 This class is a wrapper that houses the front and back side of the Network Card and powers the flip animation 
 */

struct CardView: View {
    
    let viewModel: NetworkCardViewModel
    
    @State var frontDegree = 0.0
    @State var backDegree = 90.0
    @State var isFlipped = false
    
    private let durationDelay : CGFloat = 0.3
    
    var body: some View {
        ZStack {
            NetworkCardFrontView(viewModel: viewModel, degree: $frontDegree)
            NetworkCardBackView(viewModel: viewModel, degree: $backDegree)
        }
        .gesture(
            DragGesture(minimumDistance: 50)
                .onEnded { _ in
                    flipCard()
                }
        )
    }
    
    private func flipCard() {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationDelay).delay(durationDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationDelay).delay(durationDelay)){
                backDegree = 0
            }
        }
    }
}
