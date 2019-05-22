//
//  ViewController.swift
//  16_UI_tableView
//
//  Created by Julia  Martins  Maschion on 14/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    enum veiculo: Int {
        case carro = 0
        case moto = 1
    }
    
    var cars: [String] = ["civic", "corola", "bmw", "audi", "mercedes"]
     var motos: [String] = ["bravax", "kawasaki", "Harley", "R1", "bis"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
//        self.cars.append("carro que eu quiser adicionar")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Cars"
        }else {
            return "Moto"
        }
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return self.cars.count
        }else {
            return self.motos.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
        
        switch indexPath.section {
        case veiculo.carro.rawValue:
             cell.textLabel?.text = self.cars[indexPath.row]
        case veiculo.moto.rawValue:
            cell.textLabel?.text = self.motos[indexPath.row]
        default:
            return UITableViewCell()
        }
        
//        cell.textLabel?.text = String(indexPath.row)
//
//          cell.textLabel?.text = self.cars[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section {
        case veiculo.carro.rawValue:
         print("clicou no \(self.cars[indexPath.row])")
        case veiculo.moto.rawValue:
         print("clicou no \(self.motos[indexPath.row])")
        default:break
        }
        
    }
    
}

