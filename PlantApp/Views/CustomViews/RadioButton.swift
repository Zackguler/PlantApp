//
//  RadioButton.swift
//  PlantApp
//
//  Created by Semih Güler on 4.02.2024.
//

import SwiftUI

struct RadioButton: View {
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .fill(isSelected ? Color.green : Color.gray)
                    .frame(width: 24, height: 24)
                Circle()
                    .fill(Color.white)
                    .frame(width: 10, height: 10)
                    .opacity(isSelected ? 1 : 0)
            }
        }
        .frame(width: 24, height: 24)
    }
}
