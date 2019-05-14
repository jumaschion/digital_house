//
//  Usuario.swift
//  aula_UI_text_field
//
//  Created by Julia  Martins  Maschion on 13/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import Foundation

class Usuario {
    
    var email: String = ""
    var senha: String = ""
    
    init(email: String, senha: String) {
        
        self.email = email
        self.senha = senha
        
    }
    
    init() {
        
    }
}

