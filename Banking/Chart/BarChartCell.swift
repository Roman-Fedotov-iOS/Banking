//
//  BarChartCell.swift
//  Banking
//
//  Created by Roman Fedotov on 29.03.2022.
//

import Foundation
import SwiftUI

struct BarChartCell: View {
                
    var value: Double
    var barColor: Color
                         
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(barColor)
            .scaleEffect(CGSize(width: 1, height: value), anchor: .bottom)
                
    }
}

struct BarChartCell_Previews: PreviewProvider {
     static var previews: some View {
         BarChartCell(value: 3800, barColor: .black)
     }
 }
