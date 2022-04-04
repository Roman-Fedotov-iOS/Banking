//
//  ContentView.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CardsScreen()
            .tabItem {
                 Label("Home", systemImage: "house")
            }
            BarChart(title: "Monthly Expences", legend: "USD", barColor: .black, data: chartDataSet)
                .tabItem {
                    Label("Statistic", systemImage: "table")
                }
            ProfileView()
            .tabItem {
                Label("Profile", systemImage: "person")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
