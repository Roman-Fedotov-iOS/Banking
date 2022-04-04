//
//  CardList.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import Foundation
import SwiftUI

struct CardList: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(0..<4, id: \.self) { item in
                    CardView(isSelected: item == 0)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 5, y: 5)
                }
            }
            .padding(20)
        }
    }
}
