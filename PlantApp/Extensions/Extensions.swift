//
//  Extensions.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

extension Color {
    static var black1: Color {
        Color(red: 19.0/255.0, green: 35.0/255.0, blue: 27.0/255.0, opacity: 1.0)
    }
    static var black2: Color {
        Color(red: 19.0/255.0, green: 35.0/255.0, blue: 27.0/255.0, opacity: 0.7)
    }
    static var black3: Color {
        Color(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, opacity: 0.2)
    }
    static var green1: Color {
        Color(red: 40.0/255.0, green: 175.0/255.0, blue: 110.0/255.0, opacity: 1.0)
    }
    static var gray1: Color {
        Color(red: 89.0/255.0, green: 113.0/255.0, blue: 101.0/255.0, opacity: 0.7)
    }
    static var gray2: Color {
        Color(red: 19.0/255.0, green: 35.0/255.0, blue: 27.0/255.0, opacity: 0.25)
    }
    static var gray3: Color {
        Color(red: 175.0/255.0, green: 175.0/255.0, blue: 175.0/255.0, opacity: 1)
    }
    static var white1: Color {
        Color(red: 241.0/255.0, green: 241.0/255.0, blue: 241.0/255.0, opacity: 1)
    }
    static var white2: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.7)
    }
    static var white3: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.08)
    }
    static var white4: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.15)
    }
    static var white5: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.52)
    }
    static var white6: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.5)
    }
    static var white7: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.25)
    }
    static var white8: Color {
        Color(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, opacity: 0.88)
    }
    static var white9: Color {
        Color(red: 251.0/255.0, green: 250.0/255.0, blue: 250.0/255.0, opacity: 1)
    }
    static var white10: Color {
        Color(red: 244.0/255.0, green: 246.0/255.0, blue: 246.0/255.0, opacity: 1)
    }
    static var darkGreen: Color {
        Color(red: 16.0/255.0, green: 30.0/255.0, blue: 23.0/255.0, opacity: 1)
    }
    static var gold1: Color {
        Color(red: 229.0/255.0, green: 201.0/255.0, blue: 144.0/255.0, opacity: 1)
    }
    static var gold2: Color {
        Color(red: 228.0/255.0, green: 176.0/255.0, blue: 70.0/255.0, opacity: 1)
    }
    static var brown: Color {
        Color(red: 36.0/255.0, green: 32.0/255.0, blue: 26.0/255.0, opacity: 1)
    }
}

struct UnderlineTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .underline(true, color: .gray1)
    }
}

extension View {
    func underlineText() -> some View {
        self.modifier(UnderlineTextModifier())
    }
}

