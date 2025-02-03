//
//  ContentView.swift
//  Navigation
//
//  Created by Carlos Eduardo Witte on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            // This is good when you have an element like
            // a document title, which the user can rename.
            Text("Hello, World!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
