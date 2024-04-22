//
//  Shop.swift
//  TouchDown
//
//  Created by Patricia D on 14/04/2024.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
