//
//  DetailViewController.swift
//  ProgrammaticAPP
//
//  Created by Consultant on 11/28/22.
//

import UIKit

protocol DismissDelegate: AnyObject {
    func dismissViewController(text: String?)
}

class DetailViewController: UIViewController {
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "Nike-Hot-Step-Air-Terra-Drake-NOCTA-Black-Product" )
        imageView.layer.cornerRadius = 100
        return imageView
    }()
    
    lazy var proglabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints =  false
        label.backgroundColor = .systemRed
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Nike Hot Step Air Terra Drake"
        
        return label
    }()
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
////        view.addSubview(progImageView)
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(progImageView)
        view.addSubview(proglabel)

    }
    
    init() {
            super.init(nibName: nil, bundle: nil)
            self.createTheView()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
        
    
    func createTheView(){
    

        self.view.backgroundColor = .systemRed
        self.view.addSubview(self.proglabel)
        self.view.addSubview(self.progImageView)
        
        
        self.progImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.progImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        
        self.progImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 225).isActive = true
        
        
        
        self.proglabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8).isActive = true
        self.proglabel.topAnchor.constraint(equalTo: self.progImageView.bottomAnchor, constant: 8).isActive = true
        self.proglabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8).isActive = true
        self.proglabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        

        
    }

}
