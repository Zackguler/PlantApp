//
//  HomeViewModel.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    @Published var questions: [Question] = []
    @Published var categories: [Plant] = []
    @Published var isLoading = true
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        fetchQuestionsAndCategories()
    }
    
    private func fetchQuestionsAndCategories() {
        isLoading = true
        let questionsPublisher = APIService.shared.fetchQuestions()
        let categoriesPublisher = APIService.shared.fetchCategories()
        Publishers.CombineLatest(questionsPublisher, categoriesPublisher)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished:
                    self?.isLoading = false
                    print("Both questions and categories fetched")
                case .failure(let error):
                    self?.isLoading = false
                    print("Error fetching data: \(error)")
                }
            }, receiveValue: { [weak self] (questions, categoriesResponse) in
                self?.questions = questions
                self?.categories = categoriesResponse.data
            })
            .store(in: &cancellables)
    }
}
