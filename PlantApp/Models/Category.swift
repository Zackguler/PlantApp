//
//  Category.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import Foundation

// MARK: - PlantsModel
struct Category: Codable {
    let data: [Plant]
    let meta: Meta
}

// MARK: - Plant
struct Plant: Codable, Identifiable {
    let id: Int
    let name, createdAt, updatedAt, publishedAt: String
    let title: String
    let rank: Int
    let image: PlantImage
}

// MARK: - PlantImage
struct PlantImage: Codable {
    let id: Int
    let name: String
    let alternativeText, caption: String?
    let width, height: Int
    let formats: String?
    let hash, ext, mime: String
    let size: Double
    let url: String
    let previewUrl: String?
    let provider, providerMetadata: String?
    let createdAt, updatedAt: String
    
    enum CodingKeys: String, CodingKey {
        case id, name, alternativeText, caption, width, height, formats, hash, ext, mime, size, url, previewUrl, provider
        case providerMetadata = "provider_metadata"
        case createdAt, updatedAt
    }
}

// MARK: - Meta
struct Meta: Codable {
    let pagination: Pagination
}

// MARK: - Pagination
struct Pagination: Codable {
    let page, pageSize, pageCount, total: Int
}
