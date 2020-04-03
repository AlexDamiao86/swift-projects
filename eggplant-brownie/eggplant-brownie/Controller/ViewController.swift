//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Alexandre Maia on 08/01/20.
//  Copyright © 2020 Alexandre Maia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* Codigo excluido no curso
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    */
    

    @IBOutlet weak var nomeTextField: UITextField?
    @IBOutlet weak var felicidadeTextField : UITextField?
    
    @IBAction func adicionar(_ sender: Any) {
        //Implementando o tratameto dos opcionais
//        if  let nomeRefeicao = nomeTextField?.text,
//            let felicidade = felicidadeTextField?.text {
//            if let felicidadeRefeicao = Int(felicidade) {
//                let refeicao = Refeicao(nomeRefeicao, felicidadeRefeicao)
//                print("Comi \(refeicao.getNome()) e fiquei com felicidade \(refeicao.getFelicidade())")
//            } else {
//                print("Não foi possivel registrar a refeição. Verifique as informações de entrada.")
//            }
//        }
        
        //Outra maneira de implementar o tratamento dos opcionais
        guard let nomeRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidade = felicidadeTextField?.text,
              let felicidadeRefeicao = Int(felicidade) else {
            print("Informar nível de felicidade válida")
            return
        }
        
        let refeicao = Refeicao(nomeRefeicao, felicidadeRefeicao)
        print("Comi \(refeicao.getNome()) e fiquei com felicidade \(refeicao.getFelicidade())")
    }
}

