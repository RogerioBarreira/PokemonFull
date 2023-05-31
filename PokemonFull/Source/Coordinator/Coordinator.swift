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
}
