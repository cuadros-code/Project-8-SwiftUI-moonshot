//
//  Mission.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 14/11/24.
//

import Foundation

struct Mission: Hashable, Codable, Identifiable {
    

    struct CrewRole: Codable, Hashable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    
    var formattedDateLong: String {
        launchDate?.formatted(date: .complete, time: .omitted) ?? "N/A"
    }
}
