//
//  SwiftUIView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/11/21.
//

import SwiftUI

struct WeatherViewButtonControlLabel: View {
    var title: String
    var textColor: Color
    var backgroundcolor: Color
    
    var body: some View {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundcolor)
                .foregroundColor(textColor)
                .font(.system(size:20,weight: .bold,design: .default))
                .cornerRadius(10)
    }
}
