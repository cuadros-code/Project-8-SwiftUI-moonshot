//
//  ContentView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 8/11/24.
//

import SwiftUI

struct ContentView: View {
    let astronausts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State var listMode: Bool = false
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    let list = [
        GridItem(.adaptive(minimum: 250))
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: listMode ? list : columns ) {
                    ForEach(missions) { mission in
                        NavigationLink(value: mission, label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(mission.formattedDate)
                                        .font(.caption)
                                        .foregroundStyle(.white.opacity(0.7))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBg)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBg)
                            )
                        })
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBg)
            .preferredColorScheme(.dark)
            .toolbar {
                Button {
                    listMode.toggle()
                } label: {
                    Image(systemName: listMode ? "square.grid.2x2.fill" : "rectangle.grid.1x2.fill" )
                        .foregroundStyle(.lightBg)
                }
            }
            .navigationDestination(for: Mission.self) { i in
                MissionView(
                    mission: i,
                    astronauts: astronausts
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
