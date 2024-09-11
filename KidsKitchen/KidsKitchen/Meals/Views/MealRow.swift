//
//  MealRow.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 09.09.24.
//

import SwiftUI

struct MealRow: View {
    @Namespace var namespace
    var meal: Meal
    var body: some View {
        VStack {
            HStack {
                Spacer()
                HStack {
                    Image(systemName: "clock")
                    Text("\(meal.duration) min")
                }
                .font(.subheadline)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 21)
                        .fill(.white.opacity(0.88))
                        .overlay {
                            RoundedRectangle(cornerRadius: 21).stroke(lineWidth: 2)
                        }
                )
            }
            Spacer()
            Text(meal.name)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 21)
                        .fill(.white.opacity(0.88))
                        .overlay {
                            RoundedRectangle(cornerRadius: 21).stroke(lineWidth: 2)
                        }
                )
        }
        .font(.title2)
        .fontWeight(.semibold)
        .fontWidth(.expanded)
        .padding()
        .frame(height: 300)
        .frame(maxWidth: .infinity)
        .background(
            Image(meal.imageURL)
                .resizable()
                .scaledToFill()
        )
        .clipShape(RoundedRectangle(cornerRadius: 21))
        .overlay {
            RoundedRectangle(cornerRadius: 21).stroke(lineWidth: 2)
                
        }
        .shadow(color: .black, radius: 8, y: 8)
        .padding()
    }
}

#Preview {
    MealRow(meal: .meals[0])
}
