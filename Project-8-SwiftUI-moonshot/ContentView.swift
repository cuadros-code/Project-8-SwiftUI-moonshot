//
//  ContentView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.colombia)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { size, axis in
                size * 0.8
            }
    }
}

#Preview {
    ContentView()
}
