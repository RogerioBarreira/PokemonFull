//
//  CustomTableViewCellPokemon.swift
//  PokemonFull
//
//  Created by Rogerio Martins on 01/06/23.
//

import UIKit

class CustomTableViewCellPokemon: UITableViewCell {
    
    let labelName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .label
        label.layer.borderWidth = 2
        label.layer.borderColor = UIColor.blue.cgColor
        label.layer.cornerRadius = 8
        label.clipsToBounds = true
        return label
    }()
    
    static let identifier = "CustomTableViewCellPokemon"
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        configConstraints()
    }
    
    private func configConstraints() {
        setupLabel()
    }
    
    private func setupLabel() {
        contentView.addSubview(labelName)
        NSLayoutConstraint.activate([
            labelName.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            labelName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            labelName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            labelName.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupCell(name: Result?) {
        labelName.text = name?.name ?? ""
    }
}
