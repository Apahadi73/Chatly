//
//  ChatlyApp.swift
//  Shared
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI
import Firebase

@main
struct ChatlyApp: App {
    
    init() {
//      initialize firebase app
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
