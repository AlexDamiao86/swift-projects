//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Alexandre Maia on 12/01/20.
//  Copyright © 2020 Alexandre Maia. All rights reserved.
//

import UIKit

public class Refeicao: NSObject {
    private var nome: String
    private var felicidade : Int
    private var alimentos: Array<Alimento> = []
    
    init(_ nome: String, _ felicidade: Int) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    func setNome(_ nome: String) {
        self.nome = nome
    }
    
    func getNome() -> String {
        return self.nome
    }
    
    func setFelicidade(_ felicidade: Int) {
        self.felicidade = felicidade
    }
    
    func getFelicidade() -> Int {
        return self.felicidade
    }
    
    func incluiAlimento(_ alimento : Alimento) {
        self.alimentos.append(alimento)
    }
    
    func getAlimentos() -> Array<Alimento> {
        return self.alimentos
    }
    
    func getTotalCalorias() -> Double {
        var totalCalorias : Double = 0
        for alimento in self.alimentos {
            totalCalorias += alimento.getCalorias()
        }
        return totalCalorias
    }
}
