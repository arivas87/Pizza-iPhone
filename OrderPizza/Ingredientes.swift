//
//  Ingredientes.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 23/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import Foundation

enum Tamaño: Int {
    case Pequeña, Mediana, Grande
    static var count = 3
    
    var description: String {
        switch self {
        case .Pequeña: return "Pequeña"
        case .Mediana   : return "Mediana"
        case .Grande  : return "Grande"
        }
    }
}

enum Masa: Int {
    case Delgada, Crujiente, Gruesa
    static var count = 3
    
    var description: String {
        switch self {
        case .Delgada: return "Delgada"
        case .Crujiente   : return "Crujiente"
        case .Gruesa  : return "Gruesa"
        }
    }
}

enum Queso: Int {
    case Mozarella, Cheddar, Parmesano, SinQueso
    static var count = 4
    
    var description: String {
        switch self {
        case .Mozarella: return "Mozarella"
        case .Cheddar   : return "Cheddar"
        case .Parmesano  : return "Parmesano"
        case .SinQueso  : return "Sin Queso"
        }
    }
}

let MAS = ["Jamón", "Pepperoni", "Pavo", "Salchicha", "Aceituna", "Cebolla", "Pimiento", "Piña", "Champiñones", "Carne"]

class Ingredientes {
    
    var tamaño: Tamaño
    var masa: Masa
    var queso: Queso
    var más = [Int: Bool]()
    
    init() {
        tamaño = Tamaño.Mediana
        masa = Masa.Crujiente
        queso = Queso.Cheddar
        for (index, _) in MAS.enumerate() {
            más[index] = false
        }
    }
}