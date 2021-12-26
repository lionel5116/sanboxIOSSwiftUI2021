//
//  ContentView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/8/21.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    @available(iOS 15.0, *)
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    NavigationLink(destination: WarGameView()) {
                      Text("Navigate to War Game")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .background(LinearGradient(gradient:Gradient(colors: [Color.red,Color.green]),startPoint: .leading,endPoint:.trailing))
                            .cornerRadius(40)
                    }
                    
                   
                    NavigationLink(destination: SwiftUISlots()) {
                      Text("Slots!!.. Slots!!! err body")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .background(LinearGradient(gradient:Gradient(colors: [Color.red,Color.green]),startPoint: .leading,endPoint:.trailing))
                            .cornerRadius(40)
                    }
                    
                   
                    NavigationLink(destination: WeatherView()) {
                      Text("Weather View")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .background(LinearGradient(gradient:Gradient(colors: [Color.red,Color.green]),startPoint: .leading,endPoint:.trailing))
                            .cornerRadius(40)
                        
                    }
                    
                    NavigationLink(destination: VideoListView()) {
                      Text("Video List View")
                            .frame(width: 280, height: 50)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .background(Color(.systemRed))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                        
                    }
                    
                   
                        NavigationLink(destination: CoreDataView()) {
                            Text("Core Data Example")
                                .frame(width: 280, height: 50)
                                .font(.system(size:20,weight: .bold,design: .default))
                                .background(Color(.systemRed))
                                .foregroundColor(.white)
                                .cornerRadius(40)
                            
                        }
                    
                    
                }
            }
            
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    @available(iOS 15.0, *)
    static var previews: some View {
       
            ContentView()
       
    }
}

