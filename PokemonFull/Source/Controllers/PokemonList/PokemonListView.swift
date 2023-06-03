//
//  PokemonListView.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 30/05/23.
//

import UIKit

class PokemonListView: UIView {
    
    let loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let myTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupTableView()
        setupLoading()
    }
    
    private func setupTableView() {
        addSubview(myTableView)
        NSLayoutConstraint.activate([
            myTableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            myTableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            myTableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
            myTableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func setupLoading() {
        addSubview(loading)
        NSLayoutConstraint.activate([
            loading.centerXAnchor.constraint(equalTo: myTableView.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: myTableView.centerYAnchor)
        ])
    }
}
