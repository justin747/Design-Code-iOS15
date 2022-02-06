//
//  Design_Code_iOS15App.swift
//  Design+Code iOS15
//
//  Created by Justin747 on 11/20/21.
//

import SwiftUI

@main
struct Design_Code_iOS15App: App {
    
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
