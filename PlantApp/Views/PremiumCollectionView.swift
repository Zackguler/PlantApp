//
//  PremiumCollectionView.swift
//  PlantApp
//
//  Created by Semih Güler on 4.02.2024.
//

import SwiftUI

struct Feature: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let iconName: String
}

struct PremiumCollectionView: View {
    let features = [
        Feature(title: "Unlimited", subtitle: "Plant Idenfity", iconName: "scanner"),
        Feature(title: "Faster", subtitle: "Process", iconName: "speedometer"),
        Feature(title: "Faster", subtitle: "Process", iconName: "speedometer")
    ]
    let rows = [GridItem()]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                LazyHGrid(rows: rows) {
                    ForEach(features) { feature in
                        HStack {
                            VStack(alignment: .leading, spacing: 4) {
                                Image(feature.iconName)
                                CustomText(text: feature.title, fontSize: 20, textColor: .white, lineHeight: 6, fontType: .medium)
                                    .padding(.top, 16)
                                CustomText(text: feature.subtitle, fontSize: 17, textColor: .white2, lineHeight: 6, fontType: .light)
                                Spacer()
                            }
                            .padding([.top,.leading], 16)
                            Spacer()
                        }
                        .frame(width: 156, height: 130)
                        .background(RoundedRectangle(cornerRadius: 14).fill(Color.white3))
                        .padding(.trailing, feature.id == features.last?.id ? 24 : 0)
                        .padding(.leading, feature.id == features.first?.id ? 24 : 0)
                    }
                }
                Spacer()
            }
        }
    }
}


#Preview {
    PremiumCollectionView()
}
