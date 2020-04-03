//
//  ContentView.swift
//  eggplant-brownie
//
//  Created by Alexandre Maia on 07/01/20.
//  Copyright © 2020 Alexandre Maia. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipValue = tipSelection / 100 * orderAmount
        let AmountWithTip = orderAmount + tipValue
        let amountPerPerson = AmountWithTip / peopleCount
        
        return amountPerPerson
    }
    
    //let students = ["Harry", "Hermione", "Ron"]
    //@State private var selectedStudent = "Harry"
    
    //@State private var name = ""
    
    //@State private var tapCount = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2 ..< 50) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text("How much tip do you want to leave?")) {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }
        .navigationBarTitle(Text("WeSplit"))
        }
    }
    
    /*
    var body: some View {
        Picker("Choose your student", selection: $selectedStudent) {
            ForEach(0 ..< students.count) {
                Text(self.students[$0])
            }
        }
    }
    */
    
    /* Cria um campo para informar o nome e um label que mostra o nome digitado
    var body: some View {
        Form {
            TextField("Informe seu nome", text: $name)
            Text("Seu nome é \(name)")
        }
    }
    */
    
    /* Cria um contador de cliques
    var body: some View {
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
    */
    
    /* Cria uma barra de navegacao e texto
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Olá Alexandre! Seja bem-vindo de volta!!")
                }
            }
            .navigationBarTitle(Text("Swift UI"), displayMode: .inline)
        }
    }
    */
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
