//: Playground - noun: a place where people can play

import UIKit

class Pessoa {
    private var nome : String = ""
    //peso e altura como variaveis opcionais
    private var pesoKG, alturaM: Double?
    
    //Inicializador da classe
    init(strNome : String, dblPeso : Double, dblAltura : Double) {
        self.nome = strNome
        self.pesoKG = dblPeso
        self.alturaM = dblAltura
    }
    
    private func CalculaIMC() -> Double {
        //Os valores de peso e altura deverao ser desembrulhados por serem variaveis opcionais
        let imc = pesoKG! / (alturaM! * alturaM!)
        return imc
    }
    
    private func AnalisaIMC() -> String {
        let imc = CalculaIMC()
        if imc > 18.5 && imc < 25.0 {
            return "peso saudável"
        } else if imc < 30.0 {
            return "sobrepeso"
        } else {
            return "obesidade"
        }
    }
    
    public func RetornaNomeIMCAnalise() -> String {
        return "O IMC de \(nome) é \(CalculaIMC()), significa \(AnalisaIMC())"
    }
    
    public func RetornaDescricaoClasse() -> String {
        return "Essa é um objeto da classe Pessoa"
    }
    
}

//Criando objetos da classe Pessoa pelos inicializadores

let pessoa1 : Pessoa = Pessoa(strNome : "Fulano", dblPeso : 70.0, dblAltura : 1.70)
let pessoa2 : Pessoa = Pessoa(strNome: "Ciclano", dblPeso: 65.0, dblAltura: 1.65)
let pessoa3 : Pessoa = Pessoa(strNome: "Beltrano", dblPeso: 85.0, dblAltura: 1.70)


//Criando um vetor nulo e montando-o posteriormente

var arrayPessoas : [Pessoa]!
arrayPessoas = [pessoa1 , pessoa3]
arrayPessoas.append(pessoa2)

for pessoa in arrayPessoas {
    print(pessoa.RetornaNomeIMCAnalise())
}

pessoa1.RetornaDescricaoClasse()



/* Verificar conceitos mais aprofundados sobre:
Enumerations, Closures, Protocols, Extensions
*/

//Dictionaries

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic"
]
occupations["Jane"] = "Public relations"
occupations

//Criar um dicionario vazio
let emptyDictionary = [String : Float]()

//Pode ser utilizado para criar um dicionario vazio com tipo que pode ser inferido ou apagar um dicionario existente
occupations = [:]
occupations

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var typeNumber = ""
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            typeNumber = kind
        }
    }
}
print(largest)
print(typeNumber)

//Iteracao em loops - Lembrar
var total = 0
for i in 0..<4 { //vai de 0 a 3
    total += i
}
print(total)

total = 0
for i in 0...4 { //vai de 0 a 4
    total += i
}
print(total)




