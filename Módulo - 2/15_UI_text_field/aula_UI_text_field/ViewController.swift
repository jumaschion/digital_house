//
//  ViewController.swift
//  aula_UI_text_field
//
//  Created by Julia  Martins  Maschion on 13/05/19.
//  Copyright © 2019 Julia  Martins  Maschion. All rights reserved.
//

import UIKit

// UITextfieldDelegate um protocolo que tem como regra saber quando a pessoa aperta o retorno

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var senha: UITextField!
    // aqui eu chamo o usuario que criei na Classe Usuario que vai me trazer as propriedades vazias por default
    var usuario: Usuario = Usuario() 
    var cadastrado: Bool = false
    
    @IBOutlet weak var buttonCadastro: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Aqui vai ocorrer um evento de chamar o email e senha para que eu aplique uma funcionalidade nele mais tarde
        email.delegate = self
        senha.delegate = self
    }
    
    //Essa funcao é um método para que o field de email e senha, retornem algo. A açao de retorno vai ser quando eu preencher o email
    //e clicar no retorno, ele vai automaticamente pro field de senha. Entao a senha será a primeira a responder, depois da senha a seleção de fields
    //saem e o botão fica enabled.
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.isEqual(email) {
            senha.becomeFirstResponder()
        } else {
            senha.resignFirstResponder()
            buttonCadastro.isEnabled = true
        }
        return true
    }
    
    
    // Funcao que vai pegar o usuario cadastrado e tornar true quando ele cadastrar e clicar no botao, é false no começo porque ele ainda nao está cadastrado.
    // assim que ele for cadastrado na memória, depois ele vai validar o login.
    
    @IBAction func cadastrarUsuario(_ sender: UIButton) {
        if(cadastrado == false){
            cadastrado = true
            cadastrarUsuario()
        } else {
            validarLogin()
        }
    }
    
    
    //funcao de cadastro de usuario e validar o login
    // o usuario tem que ser igual ao objeto criado usuario que traz o email e senha como opcionais
    // depois temos que setar o email e senha como vazios quando eles forem cadastrados como na funcao acima, o campo de preenchimento ficará branco
    // depois o botao mudará o texto de cadastrar para login
    public func cadastrarUsuario() {
        
        usuario = Usuario(email: email.text ?? "", senha: senha.text ?? "")
        email.text = ""
        senha.text = ""
        buttonCadastro.setTitle("Logar", for: .normal)
    }
    
    // aquoi a funcao valida se o que foi salvo na memoria como senha e email, sao iguais. Se forem o fundo ficara verde, se nao, ficará vermelho
    
    public func validarLogin() {
        if (usuario.email == email.text) && (usuario.senha == senha.text){
            self.view.backgroundColor = .green
        } else {
            self.view.backgroundColor = .red
        }
    }
}


