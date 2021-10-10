//
//  SwiftUISlots.swift
//  sanboxIOSSwiftUI2021
//
//  Created by lionel jones on 10/10/21.
//

import SwiftUI

struct SwiftUISlots: View {
    
    @State public var appleSlot = "apple";
    @State public var cherrySlot = "cherry";
    @State public var starSlot = "star";
    @State public var score: Int32 = 1000;
    @State public var Yeahhhh: String = "SLOTS!!.. SLOTS!!";
    
    
    
    var body: some View {
        
        VStack { //container
            Text("SwiftUI Slots!!!")
                .font(.largeTitle)
                .frame(width: 300.0, height: 200.0);
            Spacer()
            Text("Credits: \(score)");
            Text(Yeahhhh);
            Spacer()
            HStack{
                Spacer()
                Image(appleSlot).resizable().scaledToFit().frame(width: 125, height: 125)
                Image(cherrySlot).resizable().scaledToFit().frame(width: 125, height: 125)
                Spacer()
                Image(starSlot).resizable().scaledToFit().frame(width: 125, height: 125)
                Spacer()
            }
            Spacer()
            Button(action: {
                let appleRand = Int16.random(in:1...3);
                let cherryRand = Int16.random(in:1...3);
                let starRand = Int16.random(in:1...3);
                
                var my_list = [Int16]();
                my_list.append(appleRand);
                my_list.append(cherryRand);
                my_list.append(starRand);
                let my_final_set = Set(my_list)
                if my_final_set.count == 1 {
                        print("SLOTS!!! SLOTS!!! ERR BODY!!")
                        print(my_list)
                    score += 100;
                }
                else {
                    score -= 50;
                    
                }
                if score < 1 {
                    Yeahhhh = "YOU LOST ..LOSER!!!!"
                    print("You lost BITCH!!!!!");
                }
                my_list.removeAll()

                switch appleRand {
                case 1:
                    appleSlot = "apple";
                case 2:
                    appleSlot = "cherry";
                case 3:
                    appleSlot = "star";
                default:
                    print("nothing")
                }

                switch cherryRand {
                case 1:
                    cherrySlot = "apple";
                case 2:
                    cherrySlot = "cherry";
                case 3:
                    cherrySlot = "star";
                default:
                    print("nothing")
                }

                switch starRand {
                case 1:
                    starSlot = "apple";
                case 2:
                    starSlot = "cherry";
                case 3:
                    starSlot = "star";
                default:
                    print("nothing")
                }

            
            }, label: {
                Image("dealbutton")
            })
            Spacer()
        }  //container
    }
}

struct SwiftUISlots_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUISlots()
    }
}
