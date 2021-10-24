//
//  ContentView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/8/21.
//

import SwiftUI

struct ContentView: View {
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
            
           /*
            VStack {
                //Button instance with closure
                Button("Click Me", action:  {
                        print("I m Rick James!!!!")
                })
                    .padding(.bottom, 10.0)
           
               //Button instance with trailing closure
                Button("Click Me Again")
                {
                       print("I m Rick James Bitch!!!!")
               }
            
               //Button Image
                Button(action: {
                    print("Hello Let's War IT Bitch!!!")
                }, label: {
                    Image("logo")
                    Text("Edit")
                })
            
               Spacer()
            }
            */
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

