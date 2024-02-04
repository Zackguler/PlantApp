//
//  GetPremiumScreen.swift
//  PlantApp
//
//  Created by Semih Güler on 3.02.2024.
//

import SwiftUI

struct GetPremiumScreen: View {
    @State private var selectedOption: String = "1 Year"
    @State private var isActive = false
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("hasCompletedOnboarding") var hasCompletedOnboarding: Bool = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ScrollView(.vertical) {
                VStack {
                    ZStack(alignment: .bottomLeading) {
                        Image("plant")
                            .resizable()
                            .scaledToFill()
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                CustomText(text: "PlantApp", fontSize: 30, textColor: .white1, lineHeight: 6, fontType: .bold)
                                CustomText(text: "Premium", fontSize: 27, textColor: .white1, lineHeight: 6, fontType: .light)
                            }.padding(.horizontal, 24)
                            CustomText(text: "Access All Features", fontSize: 17, textColor: .white2, lineHeight: 6, fontType: .light)
                                .padding(.horizontal, 24)
                            PremiumCollectionView()
                                .frame(height: 156)
                        }
                    }
                    VStack {
                        SubscriptionOptionView(title: "1 Month", price: "$2.99/month, auto renewable", description: "", isYearly: false, isSelected: selectedOption == "1 Month") {
                            selectedOption = "1 Month"
                        }
                        SubscriptionOptionView(title: "1 Year", price: "First 3 days free, then $529.99/year", description: "", isYearly: true, isSelected: selectedOption == "1 Year") {
                            selectedOption = "1 Year"
                        }
                    }.padding(.horizontal, 24)
                    CustomButton(title: "Try free for 3 days", height: 52) {
                        print("Button pressed")
                    }
                    .padding(.top, 26)
                    CustomText(text: "After the 3-day free trial period you’ll be charged ₺274.99 per year unless you cancel before the trial expires. Yearly Subscription is Auto-Renewable", fontSize: 9, textColor: .white5, lineHeight: 2, alignment: .center, fontType: .light)
                        .padding(.horizontal, 24)
                        .padding(.top, 8)
                    CustomText(text: "Terms  •  Privacy  •  Restore", fontSize: 11, textColor: .white6, lineHeight: 6, alignment: .center, fontType: .medium)
                        .padding(.top, 10)
                }
            }.ignoresSafeArea(edges: .all)
            Button(action: {
                hasCompletedOnboarding = true
                presentationMode.wrappedValue.dismiss()
            }) {
                Image("close")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
            }
            .padding(.top, 8)
            .padding(.trailing, 19)
            
        }
        .background(Color.darkGreen)
        
    }
}

#Preview {
    GetPremiumScreen()
}


