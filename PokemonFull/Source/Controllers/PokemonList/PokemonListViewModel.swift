//
//  PokemonListViewModel.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import Foundation

class PokemonListViewModel: NSObject {
    
    private var myPokemon: [Result] = []
    private let worker = Worker()
    
    var numberOfRow: Int {
        return myPokemon.count
    }
    
    func cellForRow(indexPath: IndexPath)-> Result? {
        return myPokemon[indexPath.row]
    }
    
    func requestPokemonList(completion: @escaping (Bool)-> Void) {
        
        worker.workerPokemonList { [weak self] myPokemon, success in
            guard let self = self else { return }
            if success {
                self.myPokemon = myPokemon?.results ?? []
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
