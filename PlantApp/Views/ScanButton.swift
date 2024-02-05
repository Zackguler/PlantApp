//
//  ScanButton.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct ScanButton: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.green1)
                .frame(width: 60, height: 60)
            Image("scanButton")
        }
    }
}

#Preview {
    ScanButton()
}
