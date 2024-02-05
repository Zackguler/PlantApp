//
//  APIService.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import Foundation
import Combine

class APIService {
    static let shared = APIService()
    
    func fetchCategories() -> AnyPublisher<Category, Error> {
        let url = URL(string: "https://dummy-api-jtg6bessta-ey.a.run.app/getCategories")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Category.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    func fetchQuestions() -> AnyPublisher<[Question], Error> {
        let url = URL(string: "https://dummy-api-jtg6bessta-ey.a.run.app/getQuestions")!
        return URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Question].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
