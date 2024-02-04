//
//  CareGuidesView.swift
//  PlantApp
//
//  Created by Semih Güler on 3.02.2024.
//

import SwiftUI

struct CareGuidesView: View {
    var body: some View {
        ZStack {
            Image("leafs")
                .resizable()
                .scaledToFill()
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                .offset(x: 0, y: -90)
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    HStack(alignment: .top, spacing: 0) {
                        CustomText(text: "Get plant", fontSize: 28, textColor: .black1, lineHeight: 3, fontType: .medium, kern: -0.09)
                        VStack(spacing: -6) {
                            CustomText(text: "care guides", fontSize: 28, textColor: .black1, lineHeight: 6, fontType: .black)
                            Image("underline")
                                .scaledToFit()
                        }.padding(.leading, 6)
                    }
                    .frame(height: 70)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                .padding(.leading, 24)
                .padding(.trailing, -24)
                Image("careGuidePhoto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: 72)
                    .padding(.top, -40)
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [.clear, .white1]), startPoint: .center, endPoint: .bottom)
                            .opacity(0.4)
                    )
                    .overlay(
                        Image("plantPhoto")
                            .offset(x: -68, y: 18)
                            .frame(width: 167, height: 185)
                            .scaledToFill(),
                        alignment: .topTrailing
                    )
            }
        }
    }
}

#Preview {
    CareGuidesView()
}
