//
//  SubscriptionOptionView.swift
//  PlantApp
//
//  Created by Semih Güler on 4.02.2024.
//

import SwiftUI

struct SubscriptionOptionView: View {
    var title: String
    var price: String
    var description: String
    var isYearly: Bool
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack(alignment: .topTrailing) {
                optionContent
                if isYearly {
                    yearlyDiscountTag
                }
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.green1, lineWidth: isSelected ? 1.5 : 0)
        )
    }
    
    private var optionContent: some View {
        HStack {
            selectionIndicator
            VStack(alignment: .leading) {
                CustomText(text: title, fontSize: 16, textColor: .white1, lineHeight: 6, fontType: .medium)
                CustomText(text: price, fontSize: 12, textColor: .white1, lineHeight: 6, fontType: .light)
            }
            Spacer()
        }
    }
    
    private var selectionIndicator: some View {
        Circle()
            .frame(width: 24, height: 24)
            .foregroundColor(isSelected ? .green1 : .white4)
            .overlay(
                Circle()
                    .fill(Color.white1)
                    .frame(width: 10, height: 10)
                    .opacity(isSelected ? 1 : 0)
            )
    }
    
    private var yearlyDiscountTag: some View {
        CustomText(text: "Save 50%", fontSize: 12, textColor: .white1, lineHeight: 6, fontType: .medium)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(Color.green1)
            .clipShape(CustomCorners(corners: [.bottomLeft], radius: 14))
            .foregroundColor(.white)
            .offset(x: 20, y: -16)
    }
}

struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
