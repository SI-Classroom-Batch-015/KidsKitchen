//
//  ContentView.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 06.09.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 48) {
            Text("Kids Kitchen")
                .font(.largeTitle)
                .bold()
                .shadow(color: .jPrime, radius: 1, y: 3)
                .shadow(color: .jSeco, radius: 3, y: 3)
                .shadow(color: .green, radius: 8, y: 8)
            MealList()
                .shadow(color: .jPrime, radius: 1, y: 3)
                .shadow(color: .jSeco, radius: 3, y: 3)
            Spacer()
            Text("Amani Dunia Apps")
                .font(.subheadline)
                .shadow(color: .jPrime, radius: 1, y: 3)
                .shadow(color: .jSeco, radius: 3, y: 3)
                .shadow(color: .green, radius: 8, y: 8)
        }
        .fontWidth(.expanded)
    }
}

#Preview {
    ContentView()
}
