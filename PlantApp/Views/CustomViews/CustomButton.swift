//
//  CustomButton.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

struct CustomButton: View {
    var title: String
    var height: CGFloat
    var action: (() -> Void)?
    
    var body: some View {
        Group {
            if let action = action {
                Button(action: action) {
                    content
                }
            } else {
                content
            }
        }
    }
    
    private var content: some View {
        Text(title)
            .font(.system(size: 15))
            .fontWeight(.bold)
            .lineSpacing(24)
            .kerning(-0.24)
            .multilineTextAlignment(.center)
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 48, height: height)
            .background(Color.green1)
            .cornerRadius(12)
            .padding([.leading, .trailing], -24)
    }
}
