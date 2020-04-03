//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var string : String = "New York is amazing!"; //Comentário

var numeroInteiro = 40

numeroInteiro = 30

/*
 numeroInteiro = "Alterar tipo de variavel após a declaração"
 Comentario de varias linhas
 Nao eh possivel declarar uma string para uma declarada para receber inicialmente um valor numerico.
*/

var numeroInteiro2 : Int = 0
//Se explicitado o tipo da variavel apos a sua declaração o valor deverá ser inicializado ou usado um indicador de variável optional (informar ? após o tipo da variável).

//numeroInteiro2 = 1000

var soma2num = numeroInteiro + numeroInteiro2

var numeroInteiro3 : Int? = 0

var soma3num = numeroInteiro + numeroInteiro2 + numeroInteiro3!
//Quando um cálculo é feito com uma variável opcional, deve ser utilizado uma exclamação.

var numeroDecimal = 12.47
var numeroDecimal2 : Double = 52.50

//var somaInteiroDecimal = numeroInteiro + numeroDecimal
var somaInteiroDecimal = Double(numeroInteiro) + numeroDecimal
//Cálculos nao podem ser feitos com variaveis de tipos diferentes, caso necessário deverá ser realizado primeiramente o cast da variável para o tipo de variável Double

var ligado = true
var fechado : Bool = false


//Constantes - valores nao poderão ser alterados após a inicialização
let stringConstante = "Brasil" // sao declaradas com let

//stringConstante = "EUA" //Apresenta erro caso linha seja descomentada - constantes nao podem ser alteradas



