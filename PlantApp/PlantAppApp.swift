//
//  PlantAppApp.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

@main
struct PlantAppApp: App {
    
    @StateObject var onboardingViewModel = OnboardingViewModel()
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                HomeView()
            } else {
                OnboardingView(onboardingViewModel: onboardingViewModel)
            }
        }
    }
}
