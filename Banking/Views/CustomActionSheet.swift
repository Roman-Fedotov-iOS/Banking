//
//  CustomActionSheet.swift
//  Banking
//
//  Created by Roman Fedotov on 27.03.2022.
//

import Foundation
import SwiftUI

struct CustomActionSheet: View {
    
    @State var isToggle = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            Toggle(isOn: self.$isToggle) {
                Text("Notifications")
            }
            HStack {
                Text("Logout")
                    .onTapGesture {
                        print("User passed away:(")
                    }
            }
        }
        .padding(.bottom, (UIApplication.shared.windows.last?.safeAreaInsets.bottom)! + 75)
        .padding(.horizontal)
        .padding(.top, 20)
        .background(Color.white)
        .cornerRadius(25)
    }
}
