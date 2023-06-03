//
//  PokemonDetailViewController.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 02/06/23.
//

import UIKit
import Kingfisher

class PokemonDetailViewController: UIViewController {
    
    lazy var viewPokemonDetail: PokemonDetailView = {
        let view = PokemonDetailView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    let viewModelPokemonDetail = PokemonDetailViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        setupTableViews()
        setupRequest()
    }
    
    override func loadView() {
        self.view = viewPokemonDetail
    }
    
    func setupUI() {
        self.title = viewModelPokemonDetail.namePokemon
        imagePokemon()
        setupNamePokemon()
    }
    
    private func imagePokemon() {
        viewPokemonDetail.imagePokemon.kf.setImage(with: viewModelPokemonDetail.imagePokemon)
        viewPokemonDetail.imagePokemon.kf.indicatorType = .activity
    }
    
    private func setupNamePokemon() {
        viewPokemonDetail.labelNamePokemon.text = viewModelPokemonDetail.namePokemon
    }
    
    func setupRequest() {
        viewPokemonDetail.loadingDetail.startAnimating()
        viewModelPokemonDetail.requestPokemonDetail { [weak self] success in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.viewPokemonDetail.loadingDetail.stopAnimating()
            }
            if success {
                self.setupUI()
                self.setupReloadData()
            } else {
                self.showMessageError()
            }
        }
    }
    
    func showMessageError() {
        let alert = UIAlertController(
            title: "Request Error",
            message: "Erro Request Pokemon",
            preferredStyle: .alert
        )
        let actionButton = UIAlertAction(title: "OK", style: .destructive)
        alert.addAction(actionButton)
        self.present(alert, animated: true)
    }
    
    func setupTableViews() {
        setupTableViewAbilities()
        setupTableViewSpecies()
        setupTableViewGameIndex()
        setupTableViewHeldItem()
        setupTableViewMove()
        setupTableViewStat()
        setupTableViewTypeElements()
    }
    
    private func setupReloadData() {
        viewPokemonDetail.tableViewAbilities.reloadData()
        viewPokemonDetail.tableViewSpecies.reloadData()
        viewPokemonDetail.tableViewGameIndex.reloadData()
        viewPokemonDetail.tableViewHeldItem.reloadData()
        viewPokemonDetail.tableViewMove.reloadData()
        viewPokemonDetail.tableViewStat.reloadData()
        viewPokemonDetail.tableViewTypeElement.reloadData()
    }
    
    private func setupTableViewAbilities() {
        viewPokemonDetail.tableViewAbilities.delegate = self
        viewPokemonDetail.tableViewAbilities.dataSource = self
        viewPokemonDetail.tableViewAbilities.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewSpecies() {
        viewPokemonDetail.tableViewSpecies.delegate = self
        viewPokemonDetail.tableViewSpecies.dataSource = self
        viewPokemonDetail.tableViewSpecies.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewGameIndex() {
        viewPokemonDetail.tableViewGameIndex.delegate = self
        viewPokemonDetail.tableViewGameIndex.dataSource = self
        viewPokemonDetail.tableViewGameIndex.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewHeldItem() {
        viewPokemonDetail.tableViewHeldItem.delegate = self
        viewPokemonDetail.tableViewHeldItem.dataSource = self
        viewPokemonDetail.tableViewHeldItem.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewMove() {
        viewPokemonDetail.tableViewMove.delegate = self
        viewPokemonDetail.tableViewMove.dataSource = self
        viewPokemonDetail.tableViewMove.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewStat() {
        viewPokemonDetail.tableViewStat.delegate = self
        viewPokemonDetail.tableViewStat.dataSource = self
        viewPokemonDetail.tableViewStat.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
    
    private func setupTableViewTypeElements() {
        viewPokemonDetail.tableViewTypeElement.delegate = self
        viewPokemonDetail.tableViewTypeElement.dataSource = self
        viewPokemonDetail.tableViewTypeElement.register(CustomTableViewCellPokemon.self, forCellReuseIdentifier: CustomTableViewCellPokemon.identifier)
    }
}

extension PokemonDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case viewPokemonDetail.tableViewAbilities:
            return viewModelPokemonDetail.numberOfRowAbilities
        case viewPokemonDetail.tableViewSpecies:
            return viewModelPokemonDetail.numberOfRowSpecie
        case viewPokemonDetail.tableViewGameIndex:
            return viewModelPokemonDetail.numberOfRowGameIndex
        case viewPokemonDetail.tableViewHeldItem:
            return viewModelPokemonDetail.numberOfRowHeldItem
        case viewPokemonDetail.tableViewMove:
            return viewModelPokemonDetail.numberOfRowMove
        case viewPokemonDetail.tableViewStat:
            return viewModelPokemonDetail.numberOfRowStats
        default:
            return viewModelPokemonDetail.numberOfRowTypeElements
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView {
        case viewPokemonDetail.tableViewAbilities:
            if let cell =  viewPokemonDetail.tableViewAbilities.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsAbility(indexPath: indexPath))
                return cell
            }
        case viewPokemonDetail.tableViewSpecies:
            if let cell =  viewPokemonDetail.tableViewSpecies.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsEspecies(indexPath: indexPath))
                return cell
            }
        case viewPokemonDetail.tableViewGameIndex:
            if let cell =  viewPokemonDetail.tableViewGameIndex.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsGameIndex(indexPath: indexPath))
                return cell
            }
        case viewPokemonDetail.tableViewHeldItem:
            if let cell =  viewPokemonDetail.tableViewHeldItem.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsHeldItem(indexPath: indexPath))
                return cell
            }
        case viewPokemonDetail.tableViewMove:
            if let cell =  viewPokemonDetail.tableViewMove.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsMove(indexPath: indexPath))
                return cell
            }
        case viewPokemonDetail.tableViewStat:
            if let cell =  viewPokemonDetail.tableViewStat.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsStat(indexPath: indexPath))
                return cell
            }
        default:
            if let cell =  viewPokemonDetail.tableViewTypeElement.dequeueReusableCell(withIdentifier: CustomTableViewCellPokemon.identifier, for: indexPath) as? CustomTableViewCellPokemon {
                cell.setupCell(name: viewModelPokemonDetail.cellForRowsTypeElements(indexPath: indexPath))
                return cell
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let coordinator = Coordinator(navigationController: navigationController)
        coordinator.startPokemonAbility(detail: viewModelPokemonDetail.cellForRowsAbility(indexPath: indexPath))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch tableView {
        case viewPokemonDetail.tableViewAbilities:
            return 50
        default:
            return 50
        }
    }
}
