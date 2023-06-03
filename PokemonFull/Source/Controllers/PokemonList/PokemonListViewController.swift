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
    
    let viewModelPokemonList = PokemonListViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Pokemon List"
        setupTableView()
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewPokemonList
    }
    
    func setupTableView() {
        viewPokemonList.myTableView.delegate = self
        viewPokemonList.myTableView.dataSource = self
        viewPokemonList.myTableView.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    func setupRequest() {
        viewPokemonList.loading.startAnimating()
        viewModelPokemonList.requestPokemonList { [weak self] success in
            guard let self = self else { return }
            self.viewPokemonList.loading.stopAnimating()
            if success {
                self.viewPokemonList.myTableView.reloadData()
            } else {
                self.showMessageError()
            }
        }
    }
    
    func showMessageError() {
        let alert = UIAlertController(title: "Error", message: "Request Fail", preferredStyle: .alert)
        let buttonAction = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(buttonAction)
        self.present(alert, animated: true)
    }
}

extension PokemonListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelPokemonList.numberOfRow
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = viewPokemonList.myTableView.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
            cell.setupCell(name: viewModelPokemonList.cellForRow(indexPath: indexPath))
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startPokemonDetail(result: viewModelPokemonList.cellForRow(indexPath: indexPath))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

