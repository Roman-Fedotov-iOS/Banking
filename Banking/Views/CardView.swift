//
//  CardView.swift
//  Banking
//
//  Created by Roman Fedotov on 26.03.2022.
//

import Foundation
import SwiftUI

struct CardView: View {
    
    @State var isSelected: Bool
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image("visaLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35, height: 15)
                    .foregroundColor(isSelected ? Color.white : Color.black)
                    .padding()
            }
            Spacer()
            Text("Balance")
                .foregroundColor(isSelected ? Color.white : Color.black)
                .font(.caption)
                .padding(.bottom)
            HStack(alignment: .center) {
                Text("USD")
                    .foregroundColor(isSelected ? Color.white : Color.black)
                    .font(.caption)
                Text("$123.00")
                    .foregroundColor(isSelected ? Color.white : Color.black)
                    .font(Font.headline.bold())
            }
            .padding(.bottom)
            Spacer()
            Text("**** **** **** 1234")
                .foregroundColor(isSelected ? Color.white : Color.black)
                .font(.caption)
                .padding(.bottom)
        }
        .frame(width: 130, height: 150)
        .padding(8)
        .background(isSelected ? Color.black : Color.white)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(isSelected: true)
            CardView(isSelected: false)
        }
    }
}
