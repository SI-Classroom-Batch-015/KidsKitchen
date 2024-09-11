//
//  MealList.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import SwiftUI

struct MealList: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 16) {
                ForEach(mealVM.meals) { meal in
                    VStack(spacing: 32) {
                        ZStack {
                            Image(meal.imageURL)
                                .resizable()
                                .scaledToFit()
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .offset(x: phase.isIdentity ? 0 : phase.value * -128)
                                        .scaleEffect(phase.isIdentity ? 1 : 0)
                                        .blur(radius: phase.isIdentity ? 0 : 21)
                                        .opacity(phase.isIdentity ? 1 : 0)
                                }
                        }
                        .containerRelativeFrame(.horizontal)
                        .clipShape(.rect(cornerRadius: 21))
                        .shadow(color: .jSeco, radius: 8, y: 8)
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .scaleEffect(phase.isIdentity ? 1 : 0)
                                .blur(radius: phase.isIdentity ? 0 : 21)
                                .opacity(phase.isIdentity ? 1 : 0)
                                .offset(x: phase.isIdentity ? 0 : phase.value * 100)
                        }
                        Text(meal.name)
                            .font(.title2)
                            .fontWidth(.expanded)
                            .shadow(color: .jSeco, radius: 8, y: 8)
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 10)
                            }
                    }
                }
            }
        }
        .contentMargins(32)
        .scrollTargetBehavior(.paging)
        .scrollIndicators(.hidden)
        
    }
    private var mealVM = MealVM()
}

#Preview {
    MealList()
}
