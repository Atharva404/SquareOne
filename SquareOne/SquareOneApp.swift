//
//  SquareOneApp.swift
//  SquareOne
//
//  Created by Charan Vengatesh on 7/9/21.
//

import SwiftUI
import Firebase

@main
struct SquareOneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
