//
//  WeatherView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/11/21.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        
        ZStack{ //bottom layer container is our background
            LinearGradient(gradient:Gradient(colors:[.blue,.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
           
            VStack {  //Container for sub elements
                Text("Cupertino, CA")
                    .font(.system(size: 32,weight: .medium,design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                }
                
                //option shift 8 for degrees symbol
                Text("76°")
                    .font(.system(size: 70, weight: .medium ))
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack (spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", systemImageName: "cloud.sun.fill", temperature: 74)
                    
                    WeatherDayView(dayOfWeek: "WED", systemImageName: "sun.max.fill", temperature: 88)
                    
                    WeatherDayView(dayOfWeek: "THU", systemImageName: "wind.snow", temperature: 55)
                    
                    WeatherDayView(dayOfWeek: "FRI", systemImageName: "sunset.fill", temperature: 60)
                    
                    WeatherDayView(dayOfWeek: "SAT", systemImageName: "snow", temperature: 25)
                }
                Spacer()
            } //Container for sub elements
    
        } //ZStack container - bottom background layer
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var systemImageName: String
    var temperature: Int;
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: systemImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium ))
                .foregroundColor(.white)
        }
    }
}
