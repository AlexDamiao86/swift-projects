//: Playground - noun: a place where people can play

import UIKit

//Comandos básicos em Swift

let salarioMinimo = 980.00

var salario: Double = 9000.00

if (salario >= salarioMinimo) {
    print("Salário maior ou igual ao salário mínimo")
} else {
    print("Salário menor que salário mínimo")
}

if (salario == salarioMinimo) {
    print("Recebe exatamente o salário mínimo")
}

for indice in 1...5 {
    print(indice)
}

var nomeBanco : String = ""
var codigoBanco : Int = 001

switch codigoBanco {
    case 001:
        nomeBanco = "BB"
    case 104:
        nomeBanco = "Caixa"
    case 356:
        nomeBanco = "Bradesco"
    default:
        nomeBanco = "Outros"
}

print(String(codigoBanco) + " - " + nomeBanco)

//Manipulação de strings
let trecho1 = "Qual o significado da vida, "
let trecho2 = "do universo e tudo mais?"

trecho1 + trecho2

let resposta = 20

var fraseResposta = "A resposta é " + String(resposta)

fraseResposta = "A mesma resposta utilizando outro operador é \(resposta)"

print(fraseResposta)

var str = "Winter is coming!"
var stark = str.count


//Comparando strings

let charA = "M"
let charB = "M"

if charA < charB {
    print(charA + " vem antes de " + charB)
} else if charA > charB {
    print(charB + " vem antes de " + charA)
} else {
    print("Letras iguais")
}

let frase1 = "Não entre em pânico!"
let frase2 = "Até mais e obrigado pelos peixes!"

if frase1 < frase2 {
    print("Caso 1")
} else {
    print("Caso 2")
}

import Foundation

let stringLista = "ratos,golfinhos,patos,elefantes"

var array = stringLista.components(separatedBy: ",")

print(array[0]) //0 indica a primeira posição do array
print(array)


//Vetores e matrizes

//Criando um vetor de strings

var arrayStrings = ["Neo","Trinity","Morpheus"]
arrayStrings.append("Smith")
arrayStrings.remove(at: 0)
arrayStrings[0] = "Oracle"

print(arrayStrings)

//Explicitando o tipo de vetor
var arrayInteiros : [Int] = [2, 4, 6, 8, 10]

//Criando um vetor vazio
let arrayDecimais : [Double] = []

//Para evitar crash verificar a quantidade de elementos em um vetor antes de mostrar o elemento de um array
if (arrayDecimais.count > 0) {
    print(arrayDecimais[0])
} else {
    print("Vetor arrayDecimais vazio!")
}

//Adicionar novo elemento ao vetor - comando Append
arrayInteiros.append(12)
arrayStrings.append("Smith")

//Alterando o valor de um elemento no vetor
arrayStrings[0] = "Anderson"
arrayStrings

//Remover um elemento do vetor - comando Remove
arrayInteiros.remove(at: 2) //Remover o elemento no indice 2 (3 elemento do vetor)
arrayInteiros

//Iteracao em vetores
//Opcao 1
for i in 0..<arrayInteiros.count {
    let num = arrayInteiros[i]
    print(num)
}
for i in 0..<arrayStrings.count {
    let str = arrayStrings[i]
    print(str)
}

//Opcao 2
for num in arrayInteiros {
    print(num)
}
for str in arrayStrings {
    print(str)
}

//Matrizes

//Vetor de vetores
var matrix = [[10,20],[20,30]]

matrix[0][0]

matrix.append([30,50])
matrix.remove(at: 0)
matrix

matrix[0][0]

let matrix2 = [[12,11,10],[9,8,7],[6,5,4],[3,2,1]]
var elemento = matrix2[2][1]

//Optionals

var numero : Int?

//print(numero)

numero = 2

//Safe Unwrap
//Ainda que a variavel não esteja inicializada não irá acontecer um erro grave
if let unwrappedInt = numero {
    unwrappedInt + 10
}

//Forced Unwrap
numero! + 100
// Caso seja o forçado o unwrap e a variavel não estiver inicializada irá acontecer um erro grave

var unwrappedInt2 : Int! //Variavel criada unwrapped

unwrappedInt2 = numero

print(unwrappedInt2 * 8)




















