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
                            .cornerRadius(10)
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                   
                    NavigationLink(destination: SwiftUISlots()) {
                      Text("Slots!!.. Slots!!! err body")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.green)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .cornerRadius(10)
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                   
                    NavigationLink(destination: WeatherView()) {
                      Text("Weather View")
                            .frame(width: 280, height: 50)
                            .foregroundColor(.blue)
                            .font(.system(size:20,weight: .bold,design: .default))
                            .cornerRadius(10)
                        
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
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

