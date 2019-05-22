//
//  ViewController.swift
//  desafio_segues_2_robos
//
//  Created by Julia  Martins  Maschion on 16/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let nomeRobo: String = "Julia"
    let corRobo: String = "Amarela"
    let forcaRobo: String = "1000"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irParaRobosCadastrados" {
            guard let viewControllerRobosCadastrados = segue.destination as? ViewControlleRobosCadastrados else { return }
            guard let  nomeSender = sender as? String else {
                return
            }
            viewControllerRobosCadastrados.nome = nomeSender
        }
    }
    
    
    @IBAction func irProximaTelaRobos(_ sender: Any) {
        
        performSegue(withIdentifier: "irParaRobosCadastrados", sender: nome)
        
        }
    }
    





