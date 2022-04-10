//
//  DataModel.swift
//  Geicha
//
//  Created by Marcel Mravec on 14.03.2022.
//

import Foundation


enum SizeOfTea: String, CustomStringConvertible, CaseIterable {
    case medium = "medium"
    case large = "large"
    var id: String { self.rawValue }
    var description: String {
            get {
                return self.rawValue
            }
    }
}

enum TypeOfTea: String, CustomStringConvertible, CaseIterable {
    case specialTeaPresso = "Special Tea Presso"
    case teaLatte = "Tea Latte"
    case mousseSeries = "Mousse Series"
    case milkTea = "Milk Tea"
    case fruitTea = "Fruit Tea"
    var id: String { self.rawValue }
    var description: String {
            get {
                return self.rawValue
            }
    }
}

enum TeaLatte: String, CustomStringConvertible, CaseIterable {
    case matchaTeaLatte = "Matcha s čerstvým mlékem"
    case winterMellonLatte = "Zimní meloun s čerstvým mlékem"
    var id: String { self.rawValue }
    var description: String {
            get {
                return self.rawValue
            }
    }

}

enum FruitTea: String, CustomStringConvertible, CaseIterable {
    case peach = "broskev"
    case passionFruit = "mučenka"
    case mango = "mango"
    case greenApple = "zelené jablko"
    var id: String { self.rawValue }
    var description: String {
            get {
                return self.rawValue
            }
    }

}

enum MilkTea: String, CustomStringConvertible, CaseIterable {
    case geichaSignature = "Geicha mléčný čaj"
    case hazelnutMilkTea = "Lískooříškový mléčný čaj"
    case thaiMilkTea = "Thajský mléčný čaj"
    case ceylonMilkTea = "Ceylonský mléčný čaj"
    var id: String { self.rawValue }
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
    @Published var size = SizeOfTea.large
    @Published var type = TypeOfTea.fruitTea
    @Published var teaLattetype = TeaLatte.matchaTeaLatte
    @Published var fruitTeatype = FruitTea.peach
    @Published var milkTeatype = MilkTea.geichaSignature
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
