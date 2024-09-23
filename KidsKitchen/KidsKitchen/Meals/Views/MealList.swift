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
                        Text(meal.name)
                            .font(.title2)
                            .fontWeight(.bold)
                            .shadow(color: .jSeco, radius: 8, y: 8)
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 10)
                            }
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(meal.duration) min")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 16)
                                    }
                                Text("Prepare")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 32)
                                    }
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 64)
                            }
                            Spacer()
                            VStack(alignment: .center) {
                                Text("\(meal.duration) min")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                                    }
                                Text("Cook")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                                    }
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("\(meal.duration) min")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                                    }
                                Text("Total")
                                    .scrollTransition(axis: .horizontal) { content, phase in
                                        content
                                            .scaleEffect(phase.isIdentity ? 1 : 0)
                                            .blur(radius: phase.isIdentity ? 0 : 21)
                                            .opacity(phase.isIdentity ? 1 : 0)
                                            .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                                    }
                            }
                            .bold()
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                            }
                        }
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .scaleEffect(phase.isIdentity ? 1 : 0)
                                .blur(radius: phase.isIdentity ? 0 : 21)
                                .opacity(phase.isIdentity ? 1 : 0)
                                .offset(x: phase.isIdentity ? 0 : phase.value * 64)
                        }
                        ZStack {
                            Image(meal.imageURL)
                                .resizable()
                                .scaledToFit()
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .offset(x: phase.isIdentity ? 0 : phase.value * 128)
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

                        // DietForm
                        HStack {
                            Text("DietForm")
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .scaleEffect(phase.isIdentity ? 1 : 0)
                                        .blur(radius: phase.isIdentity ? 0 : 21)
                                        .opacity(phase.isIdentity ? 1 : 0)
                                        .offset(x: phase.isIdentity ? 0 : phase.value * 10)
                                }
                            Spacer()
                            Text("Food Typ")
                                .fontWeight(.semibold)
                                .shadow(color: .green, radius: 8, y: 8)
                                .scrollTransition(axis: .horizontal) { content, phase in
                                    content
                                        .scaleEffect(phase.isIdentity ? 1 : 0)
                                        .blur(radius: phase.isIdentity ? 0 : 21)
                                        .opacity(phase.isIdentity ? 1 : 0)
                                        .offset(x: phase.isIdentity ? 0 : phase.value * 512)
                                }
                        }
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .scaleEffect(phase.isIdentity ? 1 : 0)
                                .blur(radius: phase.isIdentity ? 0 : 21)
                                .opacity(phase.isIdentity ? 1 : 0)
                                .offset(x: phase.isIdentity ? 0 : phase.value * 64)
                        }
                        // MARK: - Nutrition
                        HStack {
                            VStack {
                                Text("\(200)")
                                Text("kcal")
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 16)
                            }
                            Spacer()
                            VStack {
                                Text("\(200)")
                                Text("kcal")
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 64)
                            }
                            Spacer()
                            VStack {
                                Text("\(200)")
                                Text("kcal")
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 128)
                            }
                            Spacer()
                            VStack {
                                Text("\(200)")
                                Text("kcal")
                            }
                            .scrollTransition(axis: .horizontal) { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0)
                                    .blur(radius: phase.isIdentity ? 0 : 21)
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .offset(x: phase.isIdentity ? 0 : phase.value * 256)
                            }
                        }
                        .scrollTransition(axis: .horizontal) { content, phase in
                            content
                                .scaleEffect(phase.isIdentity ? 1 : 0)
                                .blur(radius: phase.isIdentity ? 0 : 21)
                                .opacity(phase.isIdentity ? 1 : 0)
                                .offset(x: phase.isIdentity ? 0 : phase.value * 64)
                        }
                    }
                }
            }
        }
        .fontWidth(.expanded)
        .contentMargins(32)
        .scrollTargetBehavior(.paging)
        .scrollIndicators(.hidden)
        
    }
    private var mealVM = MealVM()
    
}

#Preview {
    MealList()
}
