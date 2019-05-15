//
//  ViewController.swift
//  16_UI_tableView
//
//  Created by Julia  Martins  Maschion on 14/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var cars: [String] = ["civic", "corola", "bmw", "audi", "mercedes"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.cars.append("carro que eu quiser adicionar")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        
//        cell.textLabel?.text = String(indexPath.row)
        
          cell.textLabel?.text = self.cars[indexPath.row]
        
        return cell
        
    }
}

