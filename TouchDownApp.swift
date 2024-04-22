//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Patricia D on 18/03/2024.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
