//
//  TransactionsView.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import Foundation
import SwiftUI

struct TransactionsView: View {
    var body: some View {
        VStack(spacing: -40) {
            HStack {
                Text("Send to money")
                    .font(.headline)
                Spacer()
                Image(systemName: "plus.circle.fill")
                Text("Add recipient")
                    .font(.headline)
            }
            .padding(20)
            .padding(.bottom, 50)
            .foregroundColor(.white)
            .background(Color.black)
            .cornerRadius(20)
            .offset(x: 0, y: 10)
            LazyVStack {
                ForEach(0..<10, id: \.self) { item in
                    TransactionRow()
                }
            }
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(.horizontal)
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TransactionsView()
        }
    }
}
