//
//  ContentView.swift
//  ListForEachDemo
//
//  Created by Cormell, David - DPC on 06/02/2024.
//

import SwiftUI

struct Etonian: Identifiable {
    let trialsNumber: String
    let name: String
    let house: String
    var block: String
    var hasStickUps: Bool
    
    var id: String {
        trialsNumber
    }
    
    #if DEBUG
    static var example: Etonian {
        Etonian(trialsNumber: "0311", name: "Tomas", house: "CDNP", block: "C", hasStickUps: false)
    }
    
    static var examples: [Etonian] {
        [Etonian(trialsNumber: "0311", name: "Tomas", house: "CDNP", block: "C", hasStickUps: false),
         Etonian(trialsNumber: "0403", name: "Finn", house: "PAH", block: "C", hasStickUps: false),
         Etonian(trialsNumber: "0009", name: "Koza", house: "RCH", block: "C", hasStickUps: false)]
    }
    #endif
}

struct ContentView: View {
    let etonians: [Etonian]
    
    var body: some View {
        List {
            ForEach(etonians) { etonian in
                HStack {
                    Text(etonian.name)
                    Text("House: \(etonian.house)")
                }
                .padding()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(etonians: Etonian.examples)
    }
}
