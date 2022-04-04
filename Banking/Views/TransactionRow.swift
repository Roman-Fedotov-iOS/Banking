//
//  TransactionRow.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import Foundation
import SwiftUI

struct TransactionRow: View {
    var body: some View {
        HStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .padding(5)
            VStack(alignment: .leading) {
                Text("Novus")
                    .font(.headline)
                Text("15 Jun 2022 11:00")
                    .foregroundColor(Color.secondary)
                    .font(.caption)
            }
            Spacer()
            Text("-$40.12")
                .font(.headline)
        }
        .padding(8)
    }
}
