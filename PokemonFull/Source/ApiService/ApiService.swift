//
//  ApiService.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 02/06/23.
//

import Foundation

class ApiService {
    
    static let baseUrl = "https://pokeapi.co/api/v2/"
    
    enum EndPoint: String {
        case pokemon = "pokemon/"
    }
}
