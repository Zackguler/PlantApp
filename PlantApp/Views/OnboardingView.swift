//
//  OnboardingView.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

struct OnboardingView: View {
    @ObservedObject var onboardingViewModel: OnboardingViewModel
    var body: some View {
        Text(onboardingViewModel.questions.first?.title ?? "")
    }
}
