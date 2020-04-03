import UIKit

let nome = "Alexandre Maia"

let alimento = "pizza"
let felicidade = 5
let calorias = 150.50


//Funcao sem parametro
//func alimentoConsumido() {
//    print("Meu nome é \(nome)")
//    print("Fico com felicidade \(felicidade) ao comer \(alimento)")
//    print("Isso quer dizer que ingeri \(calorias) calorias")
//}
//
//alimentoConsumido()

//Funcao com parametro
func alimentoConsumido(_ nome: String, _ alimento: String, _ felicidade: Int, _ calorias: Double ) {
    print("Meu nome é \(nome)")
    print("Fico com felicidade \(felicidade) ao comer \(alimento)")
    print("Isso quer dizer que ingeri \(calorias) calorias")
}

alimentoConsumido(nome, alimento, felicidade, calorias)

// Formas de declaracao de array
let alimentosCaloria = [50.2, 80.3, 90, 100]
let alimentosDescricao = ["uva", "banana", "pessego", "goiaba"]
let alimentosCalDesc = [[50.2, "uva"], [80.3, "banana"],
                       [90, "pessego"], [100, "goiaba"]]

print(alimentosCalDesc)

// Uma forma de iterar um array
for i in 0...(alimentosCalDesc.count - 1) {
    print()
    print(i+1)
    let alimentoCalDesc = alimentosCalDesc[i]
    print(alimentoCalDesc)
    // Outra forma de iterar um array
    for CalDesc in alimentoCalDesc {
        print(CalDesc)
    }
}

func totalCalorias(arrayCalorias : Array<Double>) -> Double {
    var total : Double = 0
    for caloria in arrayCalorias {
        total += caloria
    }
    return total
}

let somaCalorias = totalCalorias(arrayCalorias: alimentosCaloria)
print(somaCalorias)

//Metodos que devolvem opcionais
let numero = Int("5asf")
//let numero = Int("5")

if let num = numero {
    print(num)
} else {
    print("Erro ao converter String em Int")
}
