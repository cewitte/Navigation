//
//  ContentView.swift
//  Navigation
//
//  Created by Carlos Eduardo Witte on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    // NavigationPath is what we call a type-eraser – it stores any kind of Hashable data without exposing exactly what type of data each item is.
    @State private var path = NavigationPath()
    
    var body: some View {
        
        
        NavigationStack(path: $path) {
                List {
                    ForEach(0..<5) { i in
                        NavigationLink("Select Number: \(i)", value: i)
                    }
                    
                    ForEach(0..<5) { i in
                        NavigationLink("Select String: \(i)", value: String(i))
                    }
                }
                .toolbar {
                    Button("Push 777") {
                        path.append(777)
                    }
                    
                    Button("Push Hello") {
                        path.append("Hello")
                    }
                }
                .navigationDestination(for: Int.self) { selection in
                    Text("You selected number \(selection)")
                }
                .navigationDestination(for: String.self) { selection in
                    Text("You selected string \(selection)")
                }
            }
        

    }
}

#Preview {
    ContentView()
}
