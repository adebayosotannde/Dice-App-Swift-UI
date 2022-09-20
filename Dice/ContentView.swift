//
//  ContentView.swift
//  Dice
//
//  Created by Adebayo Sotannde on 9/20/22.
//

import SwiftUI

struct DiceView: View
{
    
   
    
    
    let n: Int
    var body: some View
    {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            
    }
}
struct ContentView: View {
    
    //Whenever the values change state will refresh rhew view
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
       ZStack
        {
            Image("background")
                .resizable().edgesIgnoringSafeArea(.all)
            
            VStack
            {
                Image("DiceeLogo")
                
                Spacer()
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }.padding(.horizontal)
                
                Spacer()
                
                
                Button("Roll")
                {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .background(Color(.red))
                .padding(.horizontal)
                .frame(height:100)
                
                

            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


