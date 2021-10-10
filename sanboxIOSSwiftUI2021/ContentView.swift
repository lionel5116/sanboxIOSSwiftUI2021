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
                    }
                    NavigationLink(destination: SwiftUISlots()) {
                      Text("Slots!!.. Slots!!! err body")
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

