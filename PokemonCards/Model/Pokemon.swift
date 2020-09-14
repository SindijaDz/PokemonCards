//
//  Pokemon.swift
//  PokemonCards
//
//  Created by sindija.dzintare on 14/09/2020.
//  Copyright © 2020 sindija.dzintare. All rights reserved.
//

import Foundation

struct Pokemon: Decodable {
    let name: String
    var imageUrl: String?
    let hp: String?
    let number: String?
    let series: String?
    let pokemonSet: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageUrl
        case hp
        case number
        case series
        case pokemonSet = "set"
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}
