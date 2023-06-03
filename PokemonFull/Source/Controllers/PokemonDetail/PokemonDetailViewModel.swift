//
//  PokemonDetailViewModel.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 02/06/23.
//

import Foundation

class PokemonDetailViewModel {
    
    private var pokemonDetail: PokemonDetail?
    private var result: Result?
    private let worker = Worker()
    
    var url: String {
        return result?.url ?? ""
    }
    
    var namePokemon: String {
        return pokemonDetail?.name ?? ""
    }
    
    var imagePokemon: URL? {
        return URL(string: pokemonDetail?.sprites?.frontDefault ?? "")
    }
    
    var numberOfRowAbilities: Int {
        return pokemonDetail?.abilities?.count ?? 0
    }
    
    var numberOfRowSpecie: Int {
        return pokemonDetail?.forms?.count ?? 0
    }
    
    var numberOfRowGameIndex: Int {
        return pokemonDetail?.gameIndices?.count ?? 0
    }
    
    var numberOfRowHeldItem: Int {
        return pokemonDetail?.heldItems?.count ?? 0
    }
    
    var numberOfRowMove: Int {
        return pokemonDetail?.moves?.count ?? 0
    }
    
    var numberOfRowStats: Int {
        return pokemonDetail?.stats?.count ?? 0
    }
    
    var numberOfRowTypeElements: Int {
        return pokemonDetail?.types?.count ?? 0
    }
    
    func cellForRowsAbility(indexPath: IndexPath)-> Ability? {
        return pokemonDetail?.abilities?[indexPath.row]
    }
    
    func cellForRowsEspecies(indexPath: IndexPath)-> Species? {
        return pokemonDetail?.forms?[indexPath.row]
    }
    
    func cellForRowsGameIndex(indexPath: IndexPath)-> GameIndex? {
        return pokemonDetail?.gameIndices?[indexPath.row]
    }
    
    func cellForRowsHeldItem(indexPath: IndexPath)-> HeldItem? {
        return pokemonDetail?.heldItems?[indexPath.row]
    }
    
    func cellForRowsMove(indexPath: IndexPath)-> Move? {
        return pokemonDetail?.moves?[indexPath.row]
    }
    
    func cellForRowsStat(indexPath: IndexPath)-> Stat? {
        return pokemonDetail?.stats?[indexPath.row]
    }
    
    func cellForRowsTypeElements(indexPath: IndexPath)-> TypeElement? {
        return pokemonDetail?.types?[indexPath.row]
    }
    
    func getResult(result: Result?) {
        self.result = result
    }
    
    func requestPokemonDetail(completion: @escaping (Bool)-> Void) {
        worker.workerPokemonDetail(urlString: url) { [weak self] myDetail, success in
            guard let self = self else { return }
            if success {
                self.pokemonDetail = myDetail
                completion(true)
            } else {
                completion(false)
            }
        }
    }
}
