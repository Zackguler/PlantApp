//
//  QuestionsGridView.swift
//  PlantApp
//
//  Created by Semih Güler on 5.02.2024.
//

import SwiftUI

struct QuestionsGridView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                ForEach(viewModel.questions) { question in
                    QuestionView(question: question, isFirst: question.id == viewModel.questions.first?.id, isLast: question.id == viewModel.questions.last?.id)
                }
            }
            .frame(height: 164)
            Spacer()
        }
    }
}

struct QuestionView: View {
    var question: Question
    var isFirst: Bool
    var isLast: Bool
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                AsyncImageView(imageUri: question.imageUri)
                    .cornerRadius(12)
                TextOverlay(title: question.title, subtitle: question.subtitle)
            }
            .frame(width: 240, height: 164)
            .padding(.trailing, isLast ? 24 : 0)
            .padding(.leading, isFirst ? 24 : 0)
        }
    }
}

struct AsyncImageView: View {
    let imageUri: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUri)) { phase in
            switch phase {
            case .success(let image):
                image.resizable()
            case .failure(_):
                Color.gray
            case .empty:
                Color.gray
            @unknown default:
                EmptyView()
            }
        }
    }
}

struct TextOverlay: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding(.leading, 13)
                .frame(height: 20)
            Text(subtitle)
                .font(.subheadline)
                .foregroundColor(.white)
                .padding([.leading, .bottom], 13)
        }
    }
}
