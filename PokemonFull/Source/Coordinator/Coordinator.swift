//
//  Coordinator.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import UIKit

final class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func startPokemonList() {
        let viewController = PokemonListViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startPokemonDetail(result: Result?) {
        let viewController = PokemonDetailViewController()
        viewController.viewModelPokemonDetail.getResult(result: result)
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    func startPokemonAbility(detail: Ability?) {
        let viewController = PokemonAbilitiesViewController()
        viewController.viewModelPokemonAbility.getDetailGameIndex(detail: detail)
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
