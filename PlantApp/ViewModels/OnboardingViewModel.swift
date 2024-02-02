//
//  OnboardingViewModel.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import Foundation
import Combine

class OnboardingViewModel: ObservableObject {
    @Published var questions: [Question] = []
    private var cancellables = Set<AnyCancellable>()

    init() {
        fetchQuestions()
    }

    private func fetchQuestions() {
        APIService.shared.fetchQuestions()
            .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        print("question fetched")
                        break
                    case .failure(let error):
                        print("Error: \(error)")
                    }
            }, receiveValue: { [weak self] questions in
                self?.questions = questions
            })
            .store(in: &cancellables)
    }
}
