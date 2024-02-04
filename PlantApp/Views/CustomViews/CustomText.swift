//
//  CustomText.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

enum FontType {
    case light
    case regular
    case medium
    case bold
    case black
}

struct CustomText: View {
    var text: String
    var fontSize: CGFloat
    var textColor: Color
    var lineHeight: CGFloat
    var alignment: TextAlignment?
    var fontType: FontType?
    var kern: CGFloat?
    
    private func fontName(for type: FontType) -> String {
        switch type {
        case .light:
            return "Rubik-Light"
        case .regular:
            return "Rubik-Regular"
        case .medium:
            return "Rubik-Medium"
        case .bold:
            return "Rubik-Bold"
        case .black:
            return "Rubik-Black"
        }
    }
    
    var body: some View {
        Text(text)
            .foregroundColor(textColor)
            .font(.custom(fontName(for: fontType ?? .regular), size: fontSize))
            .lineSpacing(lineHeight)
            .kerning(kern ?? 0.07)
            .multilineTextAlignment(alignment ?? .leading)
    }
}

