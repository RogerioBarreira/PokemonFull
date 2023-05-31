//
//  PokemonListViewController.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import UIKit

class PokemonListViewController: UIViewController {
    
    lazy var viewPokemonList: PokemonListView = {
        let view = PokemonListView()
        view.backgroundColor = .systemBackground
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        self.view = viewPokemonList
    }
}

