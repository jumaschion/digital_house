//
//  DetalheVC.swift
//  tableView_18
//
//  Created by Julia  Martins  Maschion on 21/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class DetalheVC: UIViewController {

    @IBOutlet weak var imagemCarro: UIImageView!
    @IBOutlet weak var nomeCarro: UILabel!
    @IBOutlet weak var anoCarro: UILabel!
    @IBOutlet weak var kmCarro: UILabel!
    @IBOutlet weak var precoCarro: UILabel!
    
    var carro: Carro?
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let _carro = self.carro {
            self.nomeCarro.text = _carro.nome
            self.imagemCarro.image = UIImage(named: _carro.nomeImagem ?? "")
            self.anoCarro.text = _carro.ano
            self.kmCarro.text = _carro.km
            self.precoCarro.text = String(_carro.preco ?? 0)
        }
    }
}
