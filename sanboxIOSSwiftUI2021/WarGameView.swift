//
//  WarGameView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/9/21.
//

import SwiftUI

struct WarGameView: View {
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            VStack {  //VStack Container
                
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            } //VStack Container
        } //ZStack
    }
}

struct WarGameView_Previews: PreviewProvider {
    static var previews: some View {
        WarGameView()
    }
}
