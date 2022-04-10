//
//  ContentView.swift
//  Geicha
//
//  Created by Marcel Mravec on 14.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var tea = Tea()
    @State private var selectedM = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    
                    Button("M") {
                        selectedM.toggle()
                        selectedM ? (tea.size = SizeOfTea.medium) : (tea.size = SizeOfTea.large)
                        
                    }
                        .padding(10)
                        .background(selectedM ? Color.purple : Color.gray)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(selectedM ? Color.purple : Color.gray, width: 5)
                    
                    
                    Button("L") {

                        selectedM.toggle()
                        selectedM ? (tea.size = SizeOfTea.medium) : (tea.size = SizeOfTea.large)

                    }   .padding(10)
                        .background(selectedM ? Color.gray : Color.purple)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(selectedM ? Color.gray : Color.purple, width: 5)

                    
                    
                    
                }
                Spacer()
                VStack {
                    NavigationLink {
                            Text("Choose your Tea Latte:")
                        
                        
                        Picker("Type of Latte", selection: $tea.teaLattetype) {
                            
                            Text("Matcha Tea Latte").tag(TeaLatte.matchaTeaLatte)
                            Text("Zimní meloun s čerstvým mlékem").tag(TeaLatte.winterMellonLatte)
                            
                        }
                        .onChange(of: tea.teaLattetype) { _ in
                            tea.type = TypeOfTea.teaLatte
                        }
                        Text("Selected type: \(tea.teaLattetype.rawValue)")
                        } label: {
                            Text("Tea Latte Selection")
                                .padding()
                        }
                        .navigationTitle("Geicha")
                    NavigationLink {
                            Text("Choose your Fruit Tea:")
                        
                        
                        Picker("Type of Fruit Tea", selection: $tea.fruitTeatype ) {
                            
                            Text("Broskev").tag(FruitTea.peach)
                            Text("Mango").tag(FruitTea.mango)
                            Text("Mučenka").tag(FruitTea.passionFruit)
                            Text("Zelené jablko").tag(FruitTea.greenApple)
                            
                        }
                        .onChange(of: tea.fruitTeatype) { _ in
                            tea.type = TypeOfTea.fruitTea
                        }
                        Text("Selected type: \(tea.fruitTeatype.rawValue)")
                        } label: {
                            Text("Fruit Tea Selection")
                                .padding()
                        }
                
                    Text("Milk Tea")
                    Text("Mousse Series")
                    
                }
                Spacer()
                switch tea.type {
                case TypeOfTea.fruitTea: Text("Your tea is \(tea.size.description) \(tea.type.description) \(tea.fruitTeatype.rawValue)")
                    .fontWeight(.semibold)
                    .foregroundColor(.orange)
                case TypeOfTea.teaLatte: Text("Your tea is \(tea.size.description) \(tea.type.description) \(tea.teaLattetype.rawValue)")
                        .fontWeight(.semibold)
                        .foregroundColor(.orange)
                default: Text("Your tea is default :) ")
                        .fontWeight(.semibold)
                        .foregroundColor(.orange)
                }
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
