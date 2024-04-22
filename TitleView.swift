//
//  TitleView.swift
//  TouchDown
//
//  Created by Patricia D on 27/03/2024.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPERTIES
    
    var title: String
    
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        } //HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview {
    TitleView(title: "Helmet")
}
