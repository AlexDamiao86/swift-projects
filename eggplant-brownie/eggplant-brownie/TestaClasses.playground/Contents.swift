import UIKit

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



//Instanciando classes
fileprivate let pizza = Alimento("Pizza", 150.2)
fileprivate let lasanha = Alimento("Lasanha", 350.7)

fileprivate let refeicao1 = Refeicao("Café", 5)
refeicao1.incluiAlimento(pizza)

fileprivate let refeicao2 = Refeicao("Almoço", 5)
refeicao2.incluiAlimento(pizza)
refeicao2.incluiAlimento(lasanha)

fileprivate let refeicao3 = Refeicao("Jantar", 4)
refeicao3.incluiAlimento(lasanha)

fileprivate let refeicao4 = Refeicao("Ceia", 0)

//Imprime os enderecos de referencia dos objetos criados
//print(refeicao1)
//print(refeicao2)

//Imprime o conteudo dos atributos dos objetos criados
//Refeicao 1
print(refeicao1.getNome())
for alimento in refeicao1.getAlimentos() {
    print("\(alimento.getDescricao()) - \(alimento.getCalorias())")
}
print(refeicao1.getTotalCalorias())
print(refeicao1.getFelicidade())

//Refeicao 2
print(refeicao2.getNome())
for alimento in refeicao2.getAlimentos() {
    print("\(alimento.getDescricao()) - \(alimento.getCalorias())")
}
print(refeicao2.getTotalCalorias())
print(refeicao2.getFelicidade())

//Refeicao 3
print(refeicao3.getNome())
for alimento in refeicao3.getAlimentos() {
    print("\(alimento.getDescricao()) - \(alimento.getCalorias())")
}
print(refeicao3.getTotalCalorias())
print(refeicao3.getFelicidade())

//Refeicao 4
print(refeicao4.getNome())
for alimento in refeicao4.getAlimentos() {
    print("\(alimento.getDescricao()) - \(alimento.getCalorias())")
}
print(refeicao4.getTotalCalorias())
print(refeicao4.getFelicidade())
