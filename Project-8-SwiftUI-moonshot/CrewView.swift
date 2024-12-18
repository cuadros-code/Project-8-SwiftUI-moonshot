//
//  CrewView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 18/11/24.
//

import SwiftUI


struct CrewView: View {
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crewMember in
                    NavigationLink {
                        AstronautView(astronaut: crewMember.astronaut)
                    } label: {
                        HStack {
                            Image(crewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(.capsule)
                                .overlay(
                                    Capsule()
                                        .strokeBorder(
                                            .white,
                                            lineWidth: 1
                                        )
                                )
                            VStack(alignment: .leading) {
                                Text(crewMember.astronaut.name)
                                    .foregroundStyle(.white)
                                    .font(.headline)
                                    
                                Text(crewMember.role)
                                    .foregroundStyle(.white.opacity(0.7))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
    }
}
