//
//  Question.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import Foundation

// MARK: - QuestionModel
struct Question: Codable, Identifiable {
    let id: Int
    let title, subtitle: String
    let imageUri: String
    let uri: String
    let order: Int
    
    enum CodingKeys: String, CodingKey {
        case id, title, subtitle
        case imageUri = "image_uri"
        case uri, order
    }
}
