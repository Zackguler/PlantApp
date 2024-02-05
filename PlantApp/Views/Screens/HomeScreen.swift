//
//  HomeScreen.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack(alignment: .top) {
            HomeHeaderView()
                .zIndex(1)
            ScrollView(.vertical) {
                VStack(alignment: .leading) {
                    Spacer().frame(height: 175)
                    PremiumButtonView()
                    CustomText(text: "Get Started", fontSize: 15, textColor: .black1, lineHeight: 6, fontType: .medium)
                        .padding(.top, 24)
                        .padding(.horizontal, 24)
                    QuestionsGridView(viewModel: viewModel)
                    PlantGridView(viewModel: viewModel)
                        .padding(.top, 8)
                        .padding(.bottom, 24)
                }
            }
            .zIndex(0)
        }
        .background(Color.white9)
    }
}
