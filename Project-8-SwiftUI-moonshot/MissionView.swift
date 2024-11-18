//
//  MissionView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 16/11/24.
//

import SwiftUI

struct CrewMember {
    let role: String
    let astronaut: Astronaut
}

struct MissionView: View {
    
    let mission: Mission
    let crew: [CrewMember]
    
    var body: some View {
        ScrollView {
            VStack {
                MissionHeroView(mission: mission)
                Divider()
                    .padding(.vertical)
                VStack(alignment: .leading) {
                    Text("Mission Highlights")
                        .font(.title.bold())
                        .padding(.bottom, 5)
                    
                    Text(mission.description)
                    
                    Text("Crew")
                        .font(.title.bold())
                        .padding(.top)
                }
                .padding(.horizontal)
                
                CrewView(crew: crew)
            }
            .padding(.bottom)
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBg)
    }
    
    init(mission: Mission, astronauts: [String: Astronaut]) {
        self.mission = mission
        
        self.crew = mission.crew.map { member in
            if let astronaut = astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    let astronaust: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    MissionView(mission: missions[2], astronauts: astronaust)
        .preferredColorScheme(.dark)
}
