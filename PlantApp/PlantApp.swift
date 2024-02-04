//
//  PlantAppApp.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

@main
struct PlantApp: App {
    @StateObject var onboardingViewModel = OnboardingViewModel()
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if hasCompletedOnboarding {
                HomeScreen()
            } else {
                NavigationStack {
                    WelcomeScreen()
                }
            }
        }
    }
}
