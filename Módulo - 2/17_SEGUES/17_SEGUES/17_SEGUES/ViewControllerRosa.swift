//
//  ViewControllerRosa.swift
//  17_SEGUES
//
//  Created by Julia  Martins  Maschion on 16/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewControllerRosa: UIViewController {
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    var nome: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomeLabel.text = self.nome 
    }
    
    @IBAction func Voltar(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
