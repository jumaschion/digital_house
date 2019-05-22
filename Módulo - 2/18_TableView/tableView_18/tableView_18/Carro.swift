//
//  Carro.swift
//  tableView_18
//
//  Created by Julia  Martins  Maschion on 21/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import Foundation

class Carro {
    
    var nome: String?
    var nomeImagem: String?
    var ano: String?
    var km: String?
    var preco: Float?
    
    init(nome: String, nomeImagem: String, ano: String, km: String, preco: Float) {
        
        self.nome = nome
        self.nomeImagem = nomeImagem
        self.ano = ano
        self.km = km
        self.preco = preco

    }
}
