//
//  MissionHeroView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 18/11/24.
//

import SwiftUI

struct MissionHeroView: View {
    let mission: Mission
    
    var body: some View {
        Image(mission.image)
            .resizable()
            .scaledToFit()
            .containerRelativeFrame(.horizontal) { width, axis in
                width * 0.6
            }
        
        Text(mission.formattedDateLong)
            .font(.title3)
    }
}
