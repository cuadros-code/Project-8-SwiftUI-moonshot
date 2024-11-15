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
    
    var body: some View {
        
        Text(String(astronausts.count))
    }
}

#Preview {
    ContentView()
}
