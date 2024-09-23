//
//  MealCategoryist.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 19.09.24.
//

import SwiftUI

struct MealCategoryList: View {
    var viewModel = MealVM()
    var body: some View {
        ScrollView {
            VStack {
                ForEach(viewModel.mealCategories) { category in
                    VStack {
                        ZStack {
                            AsyncImage(
                                url: URL(string:category.values.imageURL),
                                transaction: Transaction(
                                    animation: .easeInOut(duration: 2)
                                )
                            ) { phase in
                                switch phase {
                                case .empty:
                                    ProgressView("...loading...")
                                case .success(let image):
                                    image
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 88, height: 88)
                                        .shadow(color: .green, radius: 8)
                                        .padding(.horizontal, 8)
                                        .scrollTransition(axis: .vertical) { content, phase in
                                            content
                                                .offset(y: phase.isIdentity ? 0 : phase.value * 1000)
                                                .scaleEffect(phase.isIdentity ? 1 : 0)
                                                .blur(radius: phase.isIdentity ? 0 : 21)
                                                .opacity(phase.isIdentity ? 1 : 0)
                                        }
                                case .failure(let error):
                                    VStack {
                                        Image(systemName: "house.lodge")
                                        Text(error.localizedDescription)
                                            .multilineTextAlignment(.center)
                                    }
                                @unknown default:
                                    Text("Unknown Error")
                                        .font(.largeTitle)
                                }
                                
                            }
                        }
                        .frame(width: 88, height: 88)
                        .containerRelativeFrame(.vertical)
                        
                        ZStack {
                            Text(category.values.name)
                                .font(.headline)
                                .scrollTransition(axis: .vertical) { content, phase in
                                    content
                                        .offset(y: phase.isIdentity ? 0 : phase.value * 56)
                                        .scaleEffect(phase.isIdentity ? 1 : 0)
                                        .blur(radius: phase.isIdentity ? 0 : 21)
                                        .opacity(phase.isIdentity ? 1 : 0)
                                }
                        }
                        .containerRelativeFrame(.vertical)
                        
                    }
                }
            }
            .padding()
        }
        .fontWidth(.expanded)
        
    }
}


#Preview {
    MealCategoryList()
}
