//: Playground - noun: a place where people can play

import UIKit

class Pessoa {
    var primeiroNome : String = ""
    var pesoKG: Double = 0.0
    var alturaM: Double = 0.0
    
    func CalculaIMC() -> Double {
        let imc = self.pesoKG / (self.alturaM * self.alturaM)
        return imc
    }
    
    func RetornaNomeIMC() -> String {
        return "O IMC de \(primeiroNome) é \(CalculaIMC())"
    }
    
    func RetornaDescricaoClasse() -> String {
        return "Essa é um objeto da classe Pessoa"
    }
    
}


//Criando um objeto da Classe Pessoa
var pessoa1 = Pessoa()
pessoa1.primeiroNome = "Alexandre"
pessoa1.pesoKG = 70.0
pessoa1.alturaM = 1.70

pessoa1.CalculaIMC()
pessoa1.RetornaNomeIMC()
pessoa1.RetornaDescricaoClasse()


//Criando uma subclasse que herda os atributos e funções da superclasse

class Personagem : Pessoa {
    var nomeFilme : String = ""
    
    func RetornaNomePersonagemFilme() -> String {
        return "O personagem \(primeiroNome) é do filme \(nomeFilme)"
    }
    
    override func RetornaDescricaoClasse() -> String {
        return "Este é um objeto da subclasse Personagem"
    }
}

var personagem1 = Personagem()
personagem1.primeiroNome = "Barth"
personagem1.nomeFilme = "Simpsons"
personagem1.pesoKG = 25
personagem1.alturaM = 1.10

personagem1.CalculaIMC()

personagem1.RetornaDescricaoClasse()
personagem1.RetornaNomePersonagemFilme()


