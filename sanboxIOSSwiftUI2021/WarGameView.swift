//
//  WarGameView.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/9/21.
//

import SwiftUI

struct WarGameView: View {
    
    //state properties for our views
    @State public var playerCard = "card5";
    @State public var cpuCard = "card9";
    @State public var playerScore = 0;
    @State public var cpuScore = 0;
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    //dealAway()
                    let leftHandValue = Int.random(in: 2...14);
                    let rightHandValue = Int.random(in: 2...14);
                    
                    playerCard = "card\(leftHandValue)"
                    cpuCard = "card\(rightHandValue)"
                    
                    if leftHandValue >  rightHandValue{
                        //print("Left Hand wins with \(leftHandValue) !!!!")
                        playerScore += 1;
                    }
                    else if rightHandValue > leftHandValue {
                        //print("Right Hand wins \(rightHandValue)!!!!")
                        cpuScore += 1;
                    }
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
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

func dealAway() -> Void {
    
    
    let leftHandValue = Int.random(in: 1...14);
    let rightHandValue = Int.random(in: 1...14);
    
    if leftHandValue >  rightHandValue{
        print("Left Hand wins with \(leftHandValue) !!!!")
    }
    else if rightHandValue > leftHandValue {
        print("Right Hand wins \(rightHandValue)!!!!")
        
    }
}

struct WarGameView_Previews: PreviewProvider {
    static var previews: some View {
        WarGameView()
    }
}
