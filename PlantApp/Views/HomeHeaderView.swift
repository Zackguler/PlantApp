//
//  HomeHeaderView.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct HomeHeaderView: View {
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("homeHeader")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea(edges: .top)
            VStack(alignment: .leading) {
                CustomText(text: "Hi, plant lover!", fontSize: 16, textColor: .black1, lineHeight: 6, fontType: .regular)
                CustomText(text: "Good Afternoon! ⛅", fontSize: 24, textColor: .black1, lineHeight: 6, fontType: .medium)
                HStack(spacing: 12) {
                    Image("search")
                    CustomText(text: "Search for plants", fontSize: 15.5, textColor: .gray3, lineHeight: 6)
                    Spacer()
                }
                .padding(13)
                .background(Color.white8)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color(.systemGray4), lineWidth: 0.2)
                )
            }.padding(.horizontal, 24)
                .padding(.top, 4)
        }
    }
}

#Preview {
    HomeHeaderView()
}
