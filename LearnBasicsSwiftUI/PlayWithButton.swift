//
//  PlayWithButton.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 29/08/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct PlayWithButton: View {
      @State var pokemonName = "Charmander"
    
    var body: some View {
            VStack {
                Text(pokemonName)
                    .frame(
                      width: UIScreen.main.bounds.width,
                      height: 50
                    )
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .padding()
                
                
               Button(
                  action: { self.switchPokemon() },
                  label: { Text("Switch") }
                )
                
                
                
            }
        }
    
     func switchPokemon() {
      let list = ["Squirtle", "Bulbasaur", "Charmander", "Pikachu"]
      pokemonName = list.randomElement() ?? ""
        
    }
    
}

struct PlayWithButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithButton()
    }
}
