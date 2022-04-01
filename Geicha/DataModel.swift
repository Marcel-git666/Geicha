//
//  DataModel.swift
//  Geicha
//
//  Created by Marcel Mravec on 14.03.2022.
//

import Foundation


enum SizeOfTea: Codable {
    case medium, large
}

enum TypeOfTea: String, CustomStringConvertible {
    case specialTeaPresso = "Special Tea Presso"
    case teaLatte = "Tea Latte"
    case mousseSeries = "Mousse Series"
    case milkTea = "Milk Tea"
    case fruitTea = "Fruit Tea"
    var description: String {
            get {
                return self.rawValue
            }
    }
}

enum Topping: Codable {
    case none, tapioca, pudding, jellyCoconut, creamCheese, strawberryBoba, mangoBoba, passionFruitBoba
}

class Tea: ObservableObject {
//    var id = UUID()
    @Published var size = SizeOfTea.medium
    @Published var typ = TypeOfTea.fruitTea
    @Published var topping = Topping.tapioca
    @Published var sugarLevel = 70
    @Published var withIce = true
    
}

//class Teas: ObservableObject {
//    @Published var items = [Tea]() {
//        didSet {
//            let encoder = JSONEncoder()
//            if let encoded = try? encoder.encode(items) {
//                UserDefaults.standard.set(encoded, forKey: "items")
//            }
//        }
//    }
//    init() {
//        if let savedData = UserDefaults.standard.data(forKey: "items") {
//            if let decodedItems = try? JSONDecoder().decode([Tea].self, from: savedData) {
//                items = decodedItems
//                return
//            }
//        }
//        items = []
//    }
//
//}
