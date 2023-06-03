//
//  PokemonDetailView.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 02/06/23.
//

import UIKit

class PokemonDetailView: UIView {
    
    let myScrollVeiwDetail: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    let loadingDetail: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let imagePokemon: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleToFill
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.systemYellow.cgColor
        image.layer.backgroundColor = UIColor.systemBlue.cgColor
        image.layer.cornerRadius = 150
        image.clipsToBounds = true
        return image
    }()
    
    let labelNamePokemon: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .label
        return label
    }()
    
    let labelNameTableViewAbilities: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "A B I L I T I E S"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewAbilities: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewAbilities: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewSpecies: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "S P E C I E S"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewSpecies: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewSpecies: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewGameIndex: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "G A M E  I N D E X"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewGameIndex: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewGameIndex: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewHeldItem: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "H E L D I T E M"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewHeldItem: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewHeldItem: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewStat: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "S T A T"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewStat: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewStat: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewTypeElement: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "T Y P E  E L E M E N T"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewTypeElement: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewTypeElement: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    let labelNameTableViewMove: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.text = "M O V E"
        label.textColor = .label
        label.textAlignment = .center
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.systemBlue.cgColor
        return label
    }()
    
    let tableViewMove: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        tableView.layer.borderWidth = 2
        tableView.layer.borderColor = UIColor.systemBlue.cgColor
        return tableView
    }()
    
    let loadingTableViewMove: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView(style: .large)
        load.translatesAutoresizingMaskIntoConstraints = false
        load.backgroundColor = .clear
        load.color = .systemRed
        return load
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        setupScroll()
        setupContentView()
        setupImage()
        setupLabel()
        setupNameTableViewAbilities()
        setupTableViewAbilities()
        setupNameTableViewSpecies()
        setupTableViewSpecies()
        setupNameTableViewGameIndex()
        setupTableViewGameIndex()
        setupLabelNameTableViewHeldItem()
        setupTableViewHeldItem()
        setupLabelNameTableViewMove()
        setupTableViewMove()
        setupLabelNameTableViewStat()
        setupTableViewStat()
        setupLabelNameTableViewTypeElement()
        setupTableViewTypeElement()
        setupLoad()
        setupLoadTableViewGameIndex()
        setupLoadTableViewAbilities()
        setupLoadingTableViewSpecies()
        setupLoadingTableViewHeldItem()
        setupLoadingTableViewMove()
        setupLoadingTableViewStat()
        setupLoadingTableViewTypeElement()
    }
    
    private func setupScroll() {
        addSubview(myScrollVeiwDetail)
        NSLayoutConstraint.activate([
            myScrollVeiwDetail.topAnchor.constraint(equalTo: topAnchor),
            myScrollVeiwDetail.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            myScrollVeiwDetail.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            myScrollVeiwDetail.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    private func setupContentView() {
        myScrollVeiwDetail.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: myScrollVeiwDetail.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: myScrollVeiwDetail.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: myScrollVeiwDetail.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: myScrollVeiwDetail.trailingAnchor),
            contentView.widthAnchor.constraint(equalTo: widthAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1500)
        ])
    }
    
    private func setupImage() {
        addSubview(imagePokemon)
        NSLayoutConstraint.activate([
            imagePokemon.topAnchor.constraint(equalTo: contentView.topAnchor, constant:  20),
            imagePokemon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imagePokemon.heightAnchor.constraint(equalToConstant: 300),
            imagePokemon.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
    
    private func setupLabel() {
        contentView.addSubview(labelNamePokemon)
        NSLayoutConstraint.activate([
            labelNamePokemon.topAnchor.constraint(equalTo: imagePokemon.bottomAnchor, constant: 20),
            labelNamePokemon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNamePokemon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNamePokemon.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupNameTableViewAbilities() {
        contentView.addSubview(labelNameTableViewAbilities)
        NSLayoutConstraint.activate([
            labelNameTableViewAbilities.topAnchor.constraint(equalTo: labelNamePokemon.bottomAnchor, constant: 10),
            labelNameTableViewAbilities.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewAbilities.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewAbilities.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewAbilities() {
        contentView.addSubview(tableViewAbilities)
        NSLayoutConstraint.activate([
            tableViewAbilities.topAnchor.constraint(equalTo: labelNameTableViewAbilities.bottomAnchor, constant: 5),
            tableViewAbilities.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewAbilities.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewAbilities.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupNameTableViewSpecies() {
        contentView.addSubview(labelNameTableViewSpecies)
        NSLayoutConstraint.activate([
            labelNameTableViewSpecies.topAnchor.constraint(equalTo: tableViewAbilities.bottomAnchor, constant: 10),
            labelNameTableViewSpecies.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewSpecies.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewSpecies.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewSpecies() {
        contentView.addSubview(tableViewSpecies)
        NSLayoutConstraint.activate([
            tableViewSpecies.topAnchor.constraint(equalTo: labelNameTableViewSpecies.bottomAnchor, constant: 5),
            tableViewSpecies.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewSpecies.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewSpecies.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupNameTableViewGameIndex() {
        contentView.addSubview(labelNameTableViewGameIndex)
        NSLayoutConstraint.activate([
            labelNameTableViewGameIndex.topAnchor.constraint(equalTo: tableViewSpecies.bottomAnchor, constant: 10),
            labelNameTableViewGameIndex.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewGameIndex.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewGameIndex.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewGameIndex() {
        contentView.addSubview(tableViewGameIndex)
        NSLayoutConstraint.activate([
            tableViewGameIndex.topAnchor.constraint(equalTo: labelNameTableViewGameIndex.bottomAnchor, constant: 5),
            tableViewGameIndex.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewGameIndex.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewGameIndex.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLabelNameTableViewHeldItem() {
        contentView.addSubview(labelNameTableViewHeldItem)
        NSLayoutConstraint.activate([
            labelNameTableViewHeldItem.topAnchor.constraint(equalTo: tableViewGameIndex.bottomAnchor, constant: 10),
            labelNameTableViewHeldItem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewHeldItem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewHeldItem.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewHeldItem() {
        contentView.addSubview(tableViewHeldItem)
        NSLayoutConstraint.activate([
            tableViewHeldItem.topAnchor.constraint(equalTo: labelNameTableViewHeldItem.bottomAnchor, constant: 5),
            tableViewHeldItem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewHeldItem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewHeldItem.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLabelNameTableViewMove() {
        contentView.addSubview(labelNameTableViewMove)
        NSLayoutConstraint.activate([
            labelNameTableViewMove.topAnchor.constraint(equalTo: tableViewHeldItem.bottomAnchor, constant: 10),
            labelNameTableViewMove.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewMove.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewMove.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewMove() {
        contentView.addSubview(tableViewMove)
        NSLayoutConstraint.activate([
            tableViewMove.topAnchor.constraint(equalTo: labelNameTableViewMove.bottomAnchor, constant: 5),
            tableViewMove.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewMove.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewMove.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLabelNameTableViewStat() {
        contentView.addSubview(labelNameTableViewStat)
        NSLayoutConstraint.activate([
            labelNameTableViewStat.topAnchor.constraint(equalTo: tableViewMove.bottomAnchor, constant: 10),
            labelNameTableViewStat.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewStat.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewStat.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewStat() {
        contentView.addSubview(tableViewStat)
        NSLayoutConstraint.activate([
            tableViewStat.topAnchor.constraint(equalTo: labelNameTableViewStat.bottomAnchor, constant: 5),
            tableViewStat.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewStat.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewStat.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLabelNameTableViewTypeElement() {
        contentView.addSubview(labelNameTableViewTypeElement)
        NSLayoutConstraint.activate([
            labelNameTableViewTypeElement.topAnchor.constraint(equalTo: tableViewStat.bottomAnchor, constant: 10),
            labelNameTableViewTypeElement.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            labelNameTableViewTypeElement.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            labelNameTableViewTypeElement.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setupTableViewTypeElement() {
        contentView.addSubview(tableViewTypeElement)
        NSLayoutConstraint.activate([
            tableViewTypeElement.topAnchor.constraint(equalTo: labelNameTableViewTypeElement.bottomAnchor, constant: 5),
            tableViewTypeElement.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            tableViewTypeElement.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            tableViewTypeElement.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setupLoad() {
        contentView.addSubview(loadingDetail)
        NSLayoutConstraint.activate([
            loadingDetail.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            loadingDetail.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    private func setupLoadTableViewGameIndex() {
        contentView.addSubview(loadingTableViewGameIndex)
        NSLayoutConstraint.activate([
            loadingTableViewGameIndex.centerYAnchor.constraint(equalTo: tableViewGameIndex.centerYAnchor),
            loadingTableViewGameIndex.centerXAnchor.constraint(equalTo: tableViewGameIndex.centerXAnchor)
        ])
    }
    
    private func setupLoadTableViewAbilities() {
        contentView.addSubview(loadingTableViewAbilities)
        NSLayoutConstraint.activate([
            loadingTableViewAbilities.centerYAnchor.constraint(equalTo: tableViewAbilities.centerYAnchor),
            loadingTableViewAbilities.centerXAnchor.constraint(equalTo: tableViewAbilities.centerXAnchor)
        ])
    }
    
    private func setupLoadingTableViewSpecies() {
        contentView.addSubview(loadingTableViewSpecies)
        NSLayoutConstraint.activate([
            loadingTableViewSpecies.centerYAnchor.constraint(equalTo: tableViewSpecies.centerYAnchor),
            loadingTableViewSpecies.centerXAnchor.constraint(equalTo: tableViewSpecies.centerXAnchor)
        ])
    }
    
    private func setupLoadingTableViewHeldItem() {
        contentView.addSubview(loadingTableViewHeldItem)
        NSLayoutConstraint.activate([
            loadingTableViewHeldItem.centerYAnchor.constraint(equalTo: tableViewHeldItem.centerYAnchor),
            loadingTableViewHeldItem.centerXAnchor.constraint(equalTo: tableViewHeldItem.centerXAnchor)
        ])
    }
    
    private func setupLoadingTableViewMove() {
        contentView.addSubview(loadingTableViewMove)
        NSLayoutConstraint.activate([
            loadingTableViewMove.centerYAnchor.constraint(equalTo: tableViewMove.centerYAnchor),
            loadingTableViewMove.centerXAnchor.constraint(equalTo: tableViewMove.centerXAnchor)
        ])
    }
    
    private func setupLoadingTableViewStat() {
        contentView.addSubview(loadingTableViewStat)
        NSLayoutConstraint.activate([
            loadingTableViewStat.centerYAnchor.constraint(equalTo: tableViewStat.centerYAnchor),
            loadingTableViewStat.centerXAnchor.constraint(equalTo: tableViewStat.centerXAnchor)
        ])
    }
    
    private func setupLoadingTableViewTypeElement() {
        contentView.addSubview(loadingTableViewTypeElement)
        NSLayoutConstraint.activate([
            loadingTableViewTypeElement.centerYAnchor.constraint(equalTo: tableViewTypeElement.centerYAnchor),
            loadingTableViewTypeElement.centerXAnchor.constraint(equalTo: tableViewTypeElement.centerXAnchor)
        ])
    }
}
