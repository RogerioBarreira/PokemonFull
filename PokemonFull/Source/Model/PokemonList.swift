//
//  PokemonList.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import Foundation

// MARK: - PokemonList
struct PokemonList: Codable {
    let count: Int?
    let next, previous: String?
    let results: [Result]?
}

// MARK: - Result
struct Result: Codable {
    let name: String?
    let url: String?
}
