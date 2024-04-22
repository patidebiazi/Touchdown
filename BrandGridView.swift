//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Patricia D on 27/03/2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpace, content: {
                ForEach(brands) { brand in
                BrandItemView(brand: brand)
                }
            }) //GRID
            .frame(height: 200)
            .padding(15)
        }) //SCROLL
    }
}

#Preview {
    BrandGridView()
}
