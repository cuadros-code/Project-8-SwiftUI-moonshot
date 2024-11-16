//
//  AstronautView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 16/11/24.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
            ScrollView {
                VStack {
                    Image(astronaut.id)
                        .resizable()
                        .scaledToFit()

                    Text(astronaut.description)
                        .padding()
                }
            }
            .background(.darkBg)
            .navigationTitle(astronaut.name)
            .navigationBarTitleDisplayMode(.inline)
        }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    return AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
