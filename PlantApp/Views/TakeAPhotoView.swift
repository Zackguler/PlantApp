//
//  TakePhotoView.swift
//  PlantApp
//
//  Created by Semih Güler on 3.02.2024.
//

import SwiftUI

struct TakePhotoView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(alignment: .top, spacing: 0) {
                    CustomText(text: "Take a photo t\n the plant!", fontSize: 28, textColor: .black1, lineHeight: 3, fontType: .medium, kern: -0.09)
                    CustomText(text: "o ", fontSize: 28, textColor: .black1, lineHeight: 6, fontType: .medium, kern: 0.12)
                    VStack(spacing: -6) {
                        CustomText(text: "identify", fontSize: 28, textColor: .black1, lineHeight: 6, fontType: .black)
                        Image("underline")
                            .scaledToFill()
                    }.padding(.leading, -6)
                }.padding(.leading, 24)
            }
            Image("takeAPhotoImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(x: 0, y: 100)
        }
        .padding(.top, 12)
    }
}

#Preview {
    TakePhotoView()
}

