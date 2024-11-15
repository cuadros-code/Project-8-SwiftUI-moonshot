//
//  Bundle-Decodable.swift
//  Project-8-SwiftUI-moonshot
//
//  Created by Kevin Cuadros on 14/11/24.
//

import Foundation


extension Bundle {
    
    func decode(_ file: String) -> [String: Astronaut] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Fatal to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fail to load file.")
        }
        
        let decode = JSONDecoder()
        
        guard let loaded = try? decode.decode(
            [String: Astronaut].self,
            from: data
        ) else {
            fatalError("Fail to decode.")
        }
        
        return loaded
    }
    
}
