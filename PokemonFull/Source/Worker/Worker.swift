//
//  Worker.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import Foundation

final class Worker: NSObject {
    
    private var pokemonPerson: PokemonList?
    private let request = RequestGenerics()
    
    func workerPokemonList(page: Int = 1, completion: @escaping (PokemonList?, Bool)-> Void) {
        let limit = 20
        let offset = page * limit
        let baseUrl = ApiService.baseUrl
        let endPoint = ApiService.EndPoint.pokemon.rawValue
        let url = "\(baseUrl)\(endPoint)?limit=\(limit)&offset=\(offset)"
        
        request.requestGenerics(urlString: url, method: .get, custom: PokemonList.self) { [weak self] myPokemonPerson, success in
            guard let self = self else { return }
            print(url)
            switch success {
            case true:
                self.pokemonPerson = myPokemonPerson
                completion(myPokemonPerson,true)
            case false:
                completion(nil,false)
            }
        }
    }
}
