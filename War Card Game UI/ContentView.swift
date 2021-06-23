//
//  ContentView.swift
//  War Card Game UI
//
//  Created by Brie New on 6/9/21.
//

import SwiftUI


struct ContentView: View {

    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0

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
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                }
                Spacer()

          Button(action: {
            // Generate a random number number between 2 and 14
            let playerRand = Int.random(in: 2...14)
            let cpuRand = Int.random(in: 2...14)

            // Update the cards
            playerCard = "card" + String(playerRand)
            cpuCard = "card" + String(cpuRand)

            // Update the score
            if playerRand > cpuRand {
              return playerScore += 1
            }
            else if cpuRand > playerRand {
              return cpuScore += 1
            }

          }, label: {
                 Image("dealbutton")
             })
                    Spacer()
                   // player stack
                    HStack(alignment: .center){
                        Spacer()
                        VStack() {
                            Text(/*@START_MENU_TOKEN@*/"Player"/*@END_MENU_TOKEN@*/)
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 2.0)
                            Text(String(playerScore))
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                        }
                        Spacer()
                        VStack() {
                            Text("CPU")
                                .font(.headline)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 1.0)
                            Text(String(cpuScore))
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
