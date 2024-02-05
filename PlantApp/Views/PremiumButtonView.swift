//
//  PremiumButtonView.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct PremiumButtonView: View {
    var body: some View {
        Button(action: {
        }) {
            ZStack(alignment: .leading) {
                HStack {
                    Image("messageWithBadge")
                        .padding(.top, 8)
                    VStack(spacing: 0) {
                        PremiumButtonText(text: "FREE Premium Available", fontSize: 16, fontWeight: .semibold, height: 21)
                        PremiumButtonText(text: "Tap to upgrade your account!", fontSize: 13, fontWeight: .light, height: 16)
                            .padding(.leading, -4)
                    }
                    Spacer()
                    Image("arrow")
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 13)
            .padding(.horizontal, 20)
            .background(Color.brown)
            .ignoresSafeArea()
            .cornerRadius(12)
        }
        .padding(.horizontal, 24)
    }
}

struct PremiumButtonText: View {
    var text: String
    var fontSize: CGFloat
    var fontWeight: Font.Weight
    var height: CGFloat
    var body: some View {
        Rectangle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color.gold1,
                        Color.gold2
                    ]),
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .frame(width: 183, height: height, alignment: .leading)
            .mask(
                Text(text)
                    .font(.system(size: fontSize, weight: fontWeight))
            )
    }
}

#Preview {
    PremiumButtonView()
}
