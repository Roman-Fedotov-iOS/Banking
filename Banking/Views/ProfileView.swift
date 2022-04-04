//
//  ProfileView.swift
//  Banking
//
//  Created by Roman Fedotov on 27.03.2022.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                    Text("Roman Fedotov")
                        .font(Font.title.bold())
                }
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image(systemName: "envelope")
                        Text("romafed23@gmail.com")
                    }
                    HStack {
                        Image(systemName: "phone")
                        Text("+380995448605")
                    }
                    HStack {
                        Image(systemName: "map")
                        Text("Kharkiv, Ukraine, 61000")
                    }
                }
                
                Spacer().frame(height: 30)
                
                Button {
                    self.show.toggle()
                } label: {
                    Text("Settings")
                        .bold()
                        .frame(width: 260, height: 50)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
            VStack {
                Spacer()
                
                CustomActionSheet()
                    .offset(y: self.show ? 0 : UIScreen.main.bounds.height)
            }
            .background(self.show ? Color.black.opacity(0.3) : Color.clear)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                self.show.toggle()
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        .animation(.default)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
