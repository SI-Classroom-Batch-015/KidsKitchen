//
//  ContentView.swift
//  KidsKitchen
//
//  Created by Joscha Amani Gaber on 06.09.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Kids Kitchen")
            .font(.largeTitle)
            .fontWidth(.expanded)
            .bold()
            .shadow(color: .red, radius: 8, y: 8)
        Spacer()
        MealList()
    }
}

#Preview {
    ContentView()
}
