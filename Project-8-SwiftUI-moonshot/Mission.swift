//
//  Mission.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 14/11/24.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }

    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
