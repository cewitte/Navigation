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
            List(0..<100) { i in
                Text("Roe \(i)")
            }
            .navigationTitle("Title goes here")
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
            .toolbar (.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    ContentView()
}
