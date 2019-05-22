//
//  ViewControllerRobosCadastrados.swift
//  desafio_segues_2_robos
//
//  Created by Julia  Martins  Maschion on 16/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewControllerRobosCadastrados: UIViewController {

    
    @IBOutlet weak var nomeRobo: UILabel!
    
    @IBOutlet weak var corRobo: UILabel!
    
    @IBOutlet weak var forcaRobo: UILabel!
    
    var robo: Robo?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nomeRobo.text = nomeRobo
        self.corRobo.text = cor
        self.forcaRobo.text = forcaRobo
    }
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
             self.dismiss(animated: true)
    }
    
}



