//
//  ContentView.swift
//  ForEachSwiftUI
//
//  Created by Lucas Neves dos santos pompeu on 07/11/23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}

struct ContentView: View {
    
    let list: [String] = ["Caio", "Felipe", "Lucas"]
    
    var listPerson: [Person] = [
        Person(name: "Caio", age: 21),
        Person(name: "Felipe", age: 33),
        Person(name: "Lucas", age: 26),
    ]
    
    var body: some View {
        
        //MARK: ForEach simples
        
//        VStack {
//            ForEach(0..<10) { value in
//                Text("Valor -> \(value)")
//            }
//        }
//        .padding()
        
        //MARK: ForEach com array simples
        
//        VStack {
//            ForEach(list, id: \.self) { value in
//                Text("Valor -> \(value)")
//            }
//        }
//        .padding()
        
        //MARK: ForEach com array de objeto
        
        VStack {
            ForEach(listPerson) { person in
                VStack(spacing: 5) {
                    Text("Nome -> \(person.name)")
                    Text("Idade -> \(person.age)")
                }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
