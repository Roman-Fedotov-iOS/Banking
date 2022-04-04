//
//  CardsScreen.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import Foundation
import SwiftUI

struct CardsScreen: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                CardList()
                TransactionsView()
            }
            .navigationTitle("My Cards")
        }
    }
}
