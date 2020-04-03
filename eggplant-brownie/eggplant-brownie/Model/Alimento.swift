//
//  Alimento.swift
//  eggplant-brownie
//
//  Created by Alexandre Maia on 12/01/20.
//  Copyright © 2020 Alexandre Maia. All rights reserved.
//

import UIKit

public class Alimento: NSObject {
    private var descricao: String
    private var calorias: Double? //? significa opcional
    
    init(_ descricao : String) {
        self.descricao = descricao
    }
    
    init(_ descricao : String, _ calorias: Double) {
        self.descricao = descricao
        self.calorias = calorias
    }
    
    func setDescricao(_ descricao : String) {
        self.descricao = descricao
    }
    
    func getDescricao() -> String {
        return self.descricao
    }
    
    func setCalorias(_ calorias : Double) {
        self.calorias = calorias
    }
    
    func getCalorias() -> Double {
        //Unwrapping opcional variables
        //Se nao houver valor para a variavel, ela recebe 0
        guard let calorias = self.calorias else {
           return 0
        }
        return calorias
    }
}
