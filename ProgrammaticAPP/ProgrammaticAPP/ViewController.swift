//
//  ViewController.swift
//  ProgrammaticAPP
//
//  Created by Consultant on 11/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    var tableView: UITableView?
    
    var data: [String] = ["Yeezy Wave Runner 700 Solid Grey", "Nike PG6 Painted Swoosh", "Air Jordan 1 Retro High OG Chicago Reimagined", "Converse Chuck Taylor All Star 70s", "Nike Air Max 1 PRM Somos Familia", "Air Jordan 4 Retro SE Black Canvas Product", "Nike Air Max Plus Black Blue Red", "Air Jordan 4 Retro", "Crocs Classic Clog Lightning McQueen Product", "Air Jordan 7 Retro Trophy Room", "Air Jordan 5 Retro DJ Khaled We The Best Crimson Bliss", "Nike Air Max 98 TL Supreme White", "Nike Dunk Low Florida AM", "Air Jordan 1 Retro Low OG SP Travis Scott Reverse Mocha", "Air Jordan 1 Retro Low OG Zion Williamson Voodoo", "Air Jordan 4 Retro Military Black GS Product", "Nike Air Force 1 Low Supreme Flax Product", "Nike Air Max 97 OG Silver Bullet 2022", "Air Jordan 11 Retro Cool Grey 2021", "Nike Hot Step Air Terra x Drake", "Air Jordan 4 Retro Lightning"]
    var img : [String] = ["YeezyWaveRunner700SolidGrey", "NikePG6PaintedSwooshProduct", "AirJordan1RetroHighOGChicagoReimagined", "ConverseChuckTaylorAllStar70s", "Nike-Air-Max-1-PRM-Somos-Familia-Updated", "Air-Jordan-4-Retro-SE-Black-Canvas-Product", "Nike-Air-Max-Plus-Black-Blue-Red", "Air-Jordan-4-Retro-Canvas-Sail-W-Product", "Crocs-Classic-Clog-Lightning-McQueen-Product", "Air-Jordan-7-Retro-Trophy-Room", "Air-Jordan-5-Retro-DJ-Khaled-We-The-Best-Crimson-Bliss", "Nike-Air-Max-98-TL-Supreme-White", "Nike-Dunk-Low-Florida-A-M", "Air-Jordan-1-Retro-Low-OG-SP-Travis-Scott-Reverse-Mocha_V2-Product", "Air-Jordan-1-Retro-Low-OG-Zion-Williamson-Voodoo", "Air-Jordan-4-Retro-Military-Black-GS-Product", "Nike-Air-Force-1-Low-Supreme-Flax-Product", "Nike-Air-Max-97-OG-Silver-Bullet-2022", "Air-Jordan-11-Retro-Cool-Grey-2021-Product", "Nike-Hot-Step-Air-Terra-Drake-NOCTA-Black-Product", "Air-Jordan-4-Retro-Lightning-2021-Product"]
    
    var index : Int?
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setUpUI() {
        self.view.backgroundColor = .systemRed
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .black
        table.dataSource = self
        table.delegate = self
        table.register(ProgrammaticTableViewCell.self, forCellReuseIdentifier: "ProgCell")
        
        // add view to view hierarchy
        self.view.addSubview(table)
        

        
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true

        
        
        
        // Alt approach
//
//        let topConstraint = table.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8)
//        let leadingConstraint = table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
//        let trailingConstraint = table.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
//        let bottomConstraint = table.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
//        NSLayoutConstraint.activate([topConstraint, leadingConstraint, trailingConstraint, bottomConstraint])
//
       self.tableView = table

    }
    


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return img.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgCell", for: indexPath) as? ProgrammaticTableViewCell else{
            fatalError("Uh ohhhhhh")
        }
        cell.proglabel.text = data[indexPath.row]
        cell.progImageView.image = UIImage(named: self.img[indexPath.row % img.count])

        //cell.textLabel?.text = "\(indexPath)"
        return cell
      
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
              let navController = DetailViewController()
              navController.proglabel.text = data[indexPath.row]
              navController.progImageView.image = UIImage(named: self.img[indexPath.row % img.count])
              self.navigationController?.pushViewController(navController, animated: true)
        
              
        

              
      //        self.sendData = about[indexPath.row]
              print("The selected path is \(indexPath)")
          }
 
      }
