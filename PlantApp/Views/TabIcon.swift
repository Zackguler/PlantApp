//
//  TabIcon.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct TabIcon: View {
    var imageName: String
    var title: String
    var isSelected: Bool
    
    var body: some View {
        VStack {
            Image(imageName)
                .renderingMode(.template)
                .foregroundColor(isSelected ? .green1 : .black)
            CustomText(text: title, fontSize: 10, textColor: .black, lineHeight: 6, fontType: .light)
                .foregroundColor(isSelected ? .green1 : .black)
        }
    }
}
