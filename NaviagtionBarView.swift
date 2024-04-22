//
//  NaviagtionBarView.swift
//  TouchDown
//
//  Created by Patricia D on 19/03/2024.
//

import SwiftUI

struct NaviagtionBarView: View {
    // MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
               Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                    .font(.title)
                .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                    
                }
                   })
        } //HSTACK
    }
}

#Preview {
    NaviagtionBarView()
}
