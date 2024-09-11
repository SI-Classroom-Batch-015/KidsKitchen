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
            
            Text(meal.name)
                .font(.title2)
                .fontWidth(.expanded)
                .fontWeight(.semibold)
                .padding(.horizontal)
                .shadow(color: .jSeco, radius: 8, y: 8)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1 ..< 15) {_ in
                        Image(meal.imageURL)
                            .resizable()
                        
                            .scaledToFit()
                        
                            .clipShape(.circle)
                    }
                }
                .frame(height: 88)
                    
            }
            
            .scrollTargetBehavior(.paging)
            Spacer()
        }
    }
}

#Preview {
    MealDetail(meal: Meal.watermelonPizza)
}
