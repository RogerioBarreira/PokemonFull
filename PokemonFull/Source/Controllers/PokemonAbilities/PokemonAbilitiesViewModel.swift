//
//  PokemonAbilitiesViewModel.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 03/06/23.
//

import Foundation

class PokemonAbilitiesViewModel {
    
    var detailAbilities: Ability?
    
    func getDetailGameIndex(detail: Ability?) {
        self.detailAbilities = detail
    }
}
