//
//  ContentView.swift
//  Navigation
//
//  Created by Carlos Eduardo Witte on 27/01/25.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            
            Text("Hello, World!")
                .toolbar {
                    // Semantic placement
                    ToolbarItemGroup(placement: .confirmationAction) {
                        Button("Tap Me") {
                            
                        }
                        
                        Button("Tap Me 2") {
                            
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
