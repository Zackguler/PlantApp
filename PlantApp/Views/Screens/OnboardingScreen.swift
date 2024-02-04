//
//  OnboardingScreen.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI


enum Step: Int, CaseIterable {
    case takeAPhoto = 0, careGuides, getPremium
}

struct OnboardingScreen: View {
    @State private var selectedIndex = 0
    @State private var navigateToDifferentPage = false
    let totalSteps = 3
    
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                TakePhotoView().tag(Step.takeAPhoto.rawValue)
                CareGuidesView().tag(Step.careGuides.rawValue)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .allowsHitTesting(false)
            CustomButton(title: "Continue", height: 56) {
                withAnimation {
                    if selectedIndex >= Step.careGuides.rawValue {
                        navigateToDifferentPage = true
                    } else {
                        selectedIndex += 1
                    }
                }
            }.padding(.top, -8)
            PageIndicator(selectedIndex: $selectedIndex, totalSteps: totalSteps)
                .allowsHitTesting(false)
        }
        .background(NavigationLink("", destination: GetPremiumScreen()
            .navigationBarBackButtonHidden(true), isActive: $navigateToDifferentPage).hidden())
    }
}


struct PageIndicator: View {
    @Binding var selectedIndex: Int
    var totalSteps: Int
    
    var body: some View {
        HStack {
            ForEach(0..<totalSteps, id: \.self) { index in
                Circle()
                    .fill(index == selectedIndex ? Color.black1 : Color.gray2)
                    .frame(width: index == selectedIndex ? 10 : 6, height: index == selectedIndex ? 10 : 6)
            }
        }
        .padding(.vertical)
    }
}


#Preview {
    OnboardingScreen()
}
