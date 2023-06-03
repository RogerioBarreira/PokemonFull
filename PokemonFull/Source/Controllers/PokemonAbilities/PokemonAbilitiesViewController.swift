//
//  PokemonAbilitiesViewController.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 03/06/23.
//

import UIKit

class PokemonAbilitiesViewController: UIViewController {

    lazy var viewPokemonAbility: PokemonAbilitiesView = {
        let view = PokemonAbilitiesView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let viewModelPokemonAbility = PokemonAbilitiesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Pokemon Ability"
       
    }

    override func loadView() {
        self.view = viewPokemonAbility
    }
}
