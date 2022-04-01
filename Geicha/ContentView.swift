//
//  ContentView.swift
//  Geicha
//
//  Created by Marcel Mravec on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tea = Tea()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Sem přijde picker na velikost. Máme vybráno ....")
                    Text("Your tea is \(tea.typ.description)")
                    
                    
                }
                Spacer()
                VStack {
                    NavigationLink {
                            Text("Choose your Tea Latte")
                        } label: {
                            Text("Tea Latte Selection")
                                .padding()
                        }
                        .navigationTitle("Geicha")
                        
                
                    Text("Milk Tea")
                    Text("Mousse Series")
                    
                }
                Spacer()
            }
            
        }
        .padding(10)
        .background(.indigo)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        AddView(expenses: Expenses())
    }
}
