//
//  ContentView.swift
//  War Card Game UI
//
//  Created by Brie New on 6/9/21.
//

import SwiftUI


struct ContentView: View {
    var body: some View {

        ZStack {
            Image("background").ignoresSafeArea()


        // logo
        VStack() {
            Spacer()
            Image("logo").padding([.top])
            Spacer()
                // card stack
                    HStack() {
                        Spacer()
                        Image("back")
                        Spacer()
                        Image("back")
                        Spacer()
                }
                    Spacer()
                    // deal button
                        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("dealbutton")
                }
                    Spacer()
                   // player stack
                    HStack(alignment: .center){
                        Spacer()
                        VStack() {
                            Text(/*@START_MENU_TOKEN@*/"Player"/*@END_MENU_TOKEN@*/)
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 2.0)
                            Text("0")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        VStack() {
                            Text("CPU")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 1.0)
                            Text("0")
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                    }
            Spacer()
         }
      }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
}
