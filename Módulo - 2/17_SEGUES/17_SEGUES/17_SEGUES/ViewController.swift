//
//  ViewController.swift
//  17_SEGUES
//
//  Created by Julia  Martins  Maschion on 16/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let nome: String = "Julia"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "irParaViewControllerRosa" {
            guard let viewControllerRosa = segue.destination as? ViewControllerRosa else { return }
            guard let  nomeSender = sender as? String else {
                return
            }
            viewControllerRosa.nome = nomeSender
        }
    }
    
    @IBAction func irProximaTelaRosa(_ sender: UIButton) {
        performSegue(withIdentifier: "irParaViewControllerRosa", sender: nome)
    }
}


//    @IBAction func irParaTelaRosa(_ sender: UIButton) {
//
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//
//        guard let viewControllerRosa = storyboard.instantiateViewController(withIdentifier: "viewControllerRosa") as? ViewControllerRosa else { return }
//        self.present(viewControllerRosa, animated: true)
//
//    }

