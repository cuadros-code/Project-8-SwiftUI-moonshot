//
//  ContentView.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 8/11/24.
//

import SwiftUI


struct ContentView: View {
   
    let astronausts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        
        Text(String(astronausts.count))
    }
}

#Preview {
    ContentView()
}
