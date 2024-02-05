//
//  PlantGridView.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct PlantGridView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var columns: [GridItem] {
        let screenWidth = UIScreen.main.bounds.width
        let totalPadding: CGFloat = 24 * 2
        let spacing: CGFloat = 11
        let availableWidth = screenWidth - totalPadding - (spacing * CGFloat(2 - 1))
        let itemWidth = availableWidth / 2
        return Array(repeating: .init(.fixed(itemWidth)), count: 2)
    }
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 11) {
            ForEach(viewModel.categories) { plant in
                PlantView(plant: plant)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.systemGray4), lineWidth: 0.5)
                    )
            }
        }
        .padding(.horizontal, 24)
    }
}

struct PlantView: View {
    let plant: Plant
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            AsyncImage(url: URL(string: plant.image.url)) { image in
                image.resizable()
            } placeholder: {
                Color.clear
            }
            .frame(width: CGFloat(plant.image.width), height: CGFloat(plant.image.height))
            VStack(alignment: .leading) {
                Text(plant.title)
                    .font(.headline)
                    .foregroundColor(.black1)
                    .padding([.top, .leading], 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        }
        .background(Color.white10)
        .cornerRadius(12)
        .frame(height: 152)
    }
}
