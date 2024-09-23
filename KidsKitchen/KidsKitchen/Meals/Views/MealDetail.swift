//
//  MealDetail.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import SwiftUI

struct MealDetail: View {
    var meal: Meal
    var body: some View {
        VStack(alignment: .leading) {
            TabView {
                Image(meal.imageURL)
                    .resizable()
                    .scaledToFit()
            }
            .frame(width: .infinity, height: 300)
            .tabViewStyle(.page)
            
            // Meal Name
            Text(meal.name)
                .font(.title2)
                .fontWidth(.expanded)
                .fontWeight(.semibold)
                .padding(.horizontal)
                .shadow(color: .jSeco, radius: 8, y: 8)
            
            // MARK: Meal Nutrition
            HStack {
                VStack {
                    Text("\(meal.nutritions.calories)")
                    Text("kcal")
                }
                Spacer()
                VStack {
                    Text("\(meal.nutritions.carbs)")
                    Text("carbs")
                }
                Spacer()
                VStack {
                    Text("\(meal.nutritions.protein)")
                    Text("protein")
                }
                Spacer()
                VStack {
                    Text("\(meal.nutritions.fat)")
                    Text("fat")
                }
            }
            .padding(.top)
            .padding(.horizontal)
            
            // MARK: - Meal Ingredients
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1 ..< 21) {i in
                        ZStack {
                            Image("food\(i)")
                                .resizable()
                                .scaledToFit()
                                .clipShape(.circle)
                                .frame(width: 88, height: 88)
                                
                        }
                    }
                }
                .frame(height: 128)
                    
            }
            .scrollTargetBehavior(.viewAligned)
            Spacer()
        }
    }
}

#Preview {
    MealDetail(meal: Meal.watermelonPizza)
}
