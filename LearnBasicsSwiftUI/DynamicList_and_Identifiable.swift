//
//  DynamicList_and_Identifiable.swift
//  LearnBasicsSwiftUI
//
//  Created by Ashish Tyagi on 31/08/20.
//  Copyright © 2020 Ashish Tyagi. All rights reserved.
//

import SwiftUI

struct Pokemon: Identifiable{
    let id: Int
    let name: String
    let type: String
    let color: Color
}


struct DynamicList_and_Identifiable: View {
    
   @State var showDetails = true
    
   @State var pokemonList =
    [
        Pokemon(id: 0, name: "Charmander", type: "Fire", color: .red),
        Pokemon(id: 1, name: "Charmander", type: "Water", color: .blue),
        Pokemon(id: 2, name: "Bulbasaur", type: "Grass", color: .green),
        Pokemon(id: 3, name: "Pikachu", type: "Electric", color: .yellow)
    ]
    
    
    var body: some View {
        NavigationView {
        List(pokemonList) { pokemon in 
            HStack {
                Text(pokemon.name)
            if self.showDetails {
                Text(pokemon.type).foregroundColor(pokemon.color)
            }
          }
        }.navigationBarTitle("Pokemon List")
            .navigationBarItems(
              leading: ToggleTextButton(isOn: $showDetails),
              trailing: Button(
                action: addPokemon,
                label: { Text("Add") }
              )
            )
        }
    }
    
    func showHide() {
        
    }
    
    
    func addPokemon() {
        if let random = pokemonList.randomElement() {
            pokemonList.append(random)
        }
    }
}

struct DynamicList_and_Identifiable_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList_and_Identifiable()
    }
}
