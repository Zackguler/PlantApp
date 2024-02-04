//
//  WelcomeScreen.swift
//  PlantApp
//
//  Created by Semih Güler on 2.02.2024.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 8) {
                    CustomText(text: "Welcome to", fontSize: 28, textColor: .black, lineHeight: 6, kern: 1.1)
                    CustomText(text: "PlantApp", fontSize: 28, textColor: .black, lineHeight: 6, fontType: .bold, kern: 1.1)
                }
                .padding(.top, 12)
                CustomText(text: "Identify more than 3000+ plants and\n 88% accuracy.", fontSize: 16, textColor: .gray, lineHeight: 6)
            }
            .frame(width: UIScreen.main.bounds.width - 36, alignment: .leading)
            Image("welcomeImage")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
            NavigationLink(value: "TakeAPhotoView") {
                CustomButton(title: "Get Started", height: 56)
            }
            .navigationDestination(for: String.self) { identifier in
                if identifier == "TakeAPhotoView" {
                    OnboardingScreen()
                        .navigationBarBackButtonHidden(true)
                }
            }
            HStack {
                Spacer()
                VStack {
                    Text("By tapping next, you are agreeing to PlantID")
                        .font(.custom("Rubik", size: 11))
                        .foregroundColor(.gray1)
                        .lineSpacing(2)
                        .multilineTextAlignment(.center)
                    HStack(spacing: 3) {
                        Button(action: {
                            print("Terms of Use button pressed")
                        }) {
                            Text("Terms of Use")
                                .font(.custom("Rubik", size: 11))
                                .foregroundColor(.gray1)
                                .lineSpacing(2)
                                .multilineTextAlignment(.center)
                                .underlineText()
                        }
                        Text("&")
                            .font(.custom("Rubik", size: 11))
                            .foregroundColor(.gray1)
                            .lineSpacing(2)
                            .multilineTextAlignment(.center)
                        Button(action: {
                            print("Privacy Policy button pressed")
                        }) {
                            Text("Privacy Policy.")
                                .font(.custom("Rubik", size: 11))
                                .foregroundColor(.gray1)
                                .lineSpacing(2)
                                .multilineTextAlignment(.center)
                                .underlineText()
                        }
                    }
                }
                Spacer()
            }
            .padding([.leading, .trailing], 49)
            .padding([.bottom, .top], 8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("welcomeBackground")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        )
    }
}

#Preview {
    WelcomeScreen()
}
