//
//  ProgrammaticTableViewCell.swift
//  ProgrammaticAPP
//
//  Created by Consultant on 11/28/22.
//

import UIKit

class ProgrammaticTableViewCell: UITableViewCell {

    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Nike-Hot-Step-Air-Terra-Drake-NOCTA-Black-Product" )
        return imageView
    }()
    
    lazy var proglabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints =  false
        label.backgroundColor = .systemRed
        label.numberOfLines = 0
        label.text = "Nike Hot Step Air Terra Drake"
        
        return label
    }()
    
    
        override init(style: UITableViewCell.CellStyle,
                      reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            self.setUpUI()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    func setUpUI() {
        self.contentView.backgroundColor = .white
        self.contentView.addSubview(self.progImageView)
        self.contentView.addSubview(self.proglabel)
        

        self.progImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.progImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        self.progImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 8).isActive = true
        self.progImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true

        self.proglabel.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        self.proglabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        self.proglabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
    }
    
    
    
    
}

