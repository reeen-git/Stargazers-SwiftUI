//
//  Articles.swift
//  Stargazers-SwiftUI
//
//  Created by 高橋蓮 on 2022/09/09.
//

import Foundation

struct Articles: Decodable, Identifiable {
    var id: Int
    let result: [Results]
}

struct Results: Codable {
    let direction: String
    let season: String
    let jpName: String
    let enName: String
    let altitude: String
    let origin: String
    let content: String

    let altitudeNum: Double
    let directionNum: Double
   
    let starImage: String
    var starImageURL: URL? {
        return URL(string: starImage)
    }
    
    let starIcon: String
    var starIconURL: URL? {
        return URL(string: starIcon)
    }
}
