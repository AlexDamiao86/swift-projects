//: Playground - noun: a place where people can play

import UIKit

func CalculaIMC(altura : Double, peso : Double) -> (imc : Double, pesoSaudavel : Bool) {
    let imc = peso / (altura * altura)
    var pesoSaudavel : Bool
    
    if imc > 18.5 && imc < 25.0 {
        pesoSaudavel = true
    } else {
        pesoSaudavel = false
    }
    
    return(imc, pesoSaudavel)
}

CalculaIMC(altura: 1.71, peso: 77)
CalculaIMC(altura: 1.71, peso: 73)

let tupla = CalculaIMC(altura: 1.71, peso: 73)

//formas de acessar individualmente a informacao devolvida pela função
tupla.imc
tupla.pesoSaudavel

tupla.0
tupla.1




