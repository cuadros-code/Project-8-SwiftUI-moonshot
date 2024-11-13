//
//  ContentView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { row in
                NavigationLink("Row \(row)") {
                    Text("Detail \(row)")
                }
            }
            
            NavigationLink {
                Text("Detail View")
            } label: {
                VStack {
                    Text("This is a label")
                    Text("So is this")
                    Image(systemName: "face.smiling")
                }
            }
            
            .navigationTitle("SwiftUI")
        }
    }
}

#Preview {
    ContentView()
}
